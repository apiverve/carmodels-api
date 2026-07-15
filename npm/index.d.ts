declare module '@apiverve/carmodels' {
  export interface carmodelsOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface carmodelsResponse {
    status: string;
    error: string | null;
    data: USCarModelsData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface USCarModelsData {
      count:      number | null;
      filteredOn: (null | string)[];
      cars:       { [key: string]: null | string }[];
  }

  export default class carmodelsWrapper {
    constructor(options: carmodelsOptions);

    execute(callback: (error: any, data: carmodelsResponse | null) => void): Promise<carmodelsResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: carmodelsResponse | null) => void): Promise<carmodelsResponse>;
    execute(query?: Record<string, any>): Promise<carmodelsResponse>;
  }
}
