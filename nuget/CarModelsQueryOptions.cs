using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.CarModels
{
    /// <summary>
    /// Query options for the Car Models API
    /// </summary>
    public class CarModelsQueryOptions
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
        public string Year { get; set; }
    }
}
