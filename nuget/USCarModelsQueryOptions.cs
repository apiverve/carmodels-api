using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.USCarModels
{
    /// <summary>
    /// Query options for the US Car Models API
    /// </summary>
    public class USCarModelsQueryOptions
    {
        /// <summary>
        /// The make (manufacturer) of the car (e.g., Toyota, Honda, Ford)
        /// </summary>
        [JsonProperty("make")]
        public string Make { get; set; }

        /// <summary>
        /// Filter by year (1984-present)
        /// </summary>
        [JsonProperty("year")]
        public int? Year { get; set; }
    }
}
