/**
 * The contents of this file are subject to the license and copyright
 * detailed in the LICENSE and NOTICE files at the root of the source
 * tree and available online at
 *
 * http://www.dspace.org/license/
 */
package org.dspace.app.itemimport;

import gr.ekt.bte.core.DataLoader;

import java.util.HashMap;
import java.util.Map;




/**
 * This class acts as a Service in the procedure ot batch import using the Biblio-Transformation-Engine
 */
public class DataLoaderService
{

    Map<String, DataLoader> dataLoaders = new HashMap<String, DataLoader>();
    Map<String, String> outputMap = new HashMap<String,String>();
    
    /**
     * Default constructor
     */
    public DataLoaderService()
    {
        super();
    }

    /**
     * Setter method for dataLoaders parameter
     * @param dataLoaders
     */
    public void setDataLoaders(Map<String, DataLoader> dataLoaders)
    {
        this.dataLoaders = dataLoaders;
    }

    /**
     * 
     * @return the map of DataLoaders
     */
    public Map<String, DataLoader> getDataLoaders()
    {
        return dataLoaders;
    }

    /**
     * 
     * @return the outputMapping
     */
	public Map<String, String> getOutputMap() {
		return outputMap;
	}

	/**
	 * Setter method for the outputMapping
	 * @param outputMapping
	 */
	public void setOutputMap(Map<String, String> outputMap) {
		this.outputMap = outputMap;
	}
  
}