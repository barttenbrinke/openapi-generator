// <auto-generated>
/*
 * fruity
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 0.0.1
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

#nullable enable

using System;
using System.Threading.Channels;

namespace Org.OpenAPITools.Client 
{
    /// <summary>
    /// Provides a token to the api clients. Tokens will be rate limited based on the provided TimeSpan.
    /// </summary>
    /// <typeparam name="TTokenBase"></typeparam>
    public class RateLimitProvider<TTokenBase> : TokenProvider<TTokenBase> where TTokenBase : TokenBase
    {
        internal Channel<TTokenBase> AvailableTokens { get; }

        /// <summary>
        /// Instantiates a ThrottledTokenProvider. Your tokens will be rate limited based on the token's timeout.
        /// </summary>
        /// <param name="container"></param>
        public RateLimitProvider(TokenContainer<TTokenBase> container) : base(container.Tokens)
        {
            foreach(TTokenBase token in _tokens)
                token.StartTimer(token.Timeout ?? TimeSpan.FromMilliseconds(40));

            BoundedChannelOptions options = new BoundedChannelOptions(_tokens.Length) 
            { 
                FullMode = BoundedChannelFullMode.DropWrite 
            };

            AvailableTokens = Channel.CreateBounded<TTokenBase>(options);

            for (int i = 0; i < _tokens.Length; i++)
                _tokens[i].TokenBecameAvailable += ((sender) => AvailableTokens.Writer.TryWrite((TTokenBase) sender));
        }
        internal override async System.Threading.Tasks.ValueTask<TTokenBase> GetAsync(System.Threading.CancellationToken cancellation = default)
            => await AvailableTokens.Reader.ReadAsync(cancellation).ConfigureAwait(false);
    }
} 