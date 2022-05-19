//
//  AcronymsMock.swift
//  AcronymsApp
//
//  Created by Baskaran Thanigaimani on 07/05/22.
//

import Foundation

// Mock Data from API
struct AcronymsMock {
    static var mockWithData: Data {
        get {
            """
            [{"sf": "INS", "lfs": [{"lf": "insulin", "freq": 324, "since": 1975, "vars": [{"lf": "insulin", "freq": 295, "since": 1975}, {"lf": "Insulin", "freq": 24, "since": 1986}, {"lf": "insulinoma", "freq": 3, "since": 2004}, {"lf": "insuline", "freq": 2, "since": 1993}]}, {"lf": "idiopathic nephrotic syndrome", "freq": 130, "since": 1974, "vars": [{"lf": "idiopathic nephrotic syndrome", "freq": 121, "since": 1974}, {"lf": "Idiopathic nephrotic syndrome", "freq": 8, "since": 1981}, {"lf": "idiopathic nephrotic syndromes", "freq": 1, "since": 1991}]}, {"lf": "myo-inositol", "freq": 51, "since": 1992, "vars": [{"lf": "myo-inositol", "freq": 43, "since": 1992}, {"lf": "myoinositol", "freq": 5, "since": 2001}, {"lf": "myo-Inositol", "freq": 2, "since": 2003}, {"lf": "Myo-inositol", "freq": 1, "since": 2005}]}, {"lf": "inelastic neutron scattering", "freq": 40, "since": 1994, "vars": [{"lf": "inelastic neutron scattering", "freq": 27, "since": 1999}, {"lf": "Inelastic neutron scattering", "freq": 10, "since": 2001}, {"lf": "Inelastic neutron-scattering", "freq": 1, "since": 1994}, {"lf": "inelastic neutron-scattering", "freq": 1, "since": 2006}, {"lf": "Inelastic Neutron Scattering", "freq": 1, "since": 2006}]}, {"lf": "interneurons", "freq": 28, "since": 1981, "vars": [{"lf": "interneurons", "freq": 22, "since": 1981}, {"lf": "interneurones", "freq": 6, "since": 1985}]}, {"lf": "infantile nystagmus syndrome", "freq": 20, "since": 2002, "vars": [{"lf": "infantile nystagmus syndrome", "freq": 16, "since": 2002}, {"lf": "Infantile Nystagmus Syndrome", "freq": 3, "since": 2005}, {"lf": "Infantile nystagmus syndrome", "freq": 1, "since": 2006}]}, {"lf": "Immigration and Naturalization Service", "freq": 18, "since": 1984, "vars": [{"lf": "Immigration and Naturalization Service", "freq": 18, "since": 1984}]}, {"lf": "intranasal corticosteroids", "freq": 15, "since": 2000, "vars": [{"lf": "intranasal corticosteroids", "freq": 6, "since": 2000}, {"lf": "Intranasal corticosteroids", "freq": 3, "since": 2006}, {"lf": "intranasal corticosteroid", "freq": 3, "since": 2004}, {"lf": "intranasal steroids", "freq": 2, "since": 2004}, {"lf": "Intranasal steroids", "freq": 1, "since": 2008}]}, {"lf": "insertion", "freq": 15, "since": 1984, "vars": [{"lf": "insertion", "freq": 9, "since": 1984}, {"lf": "insertions", "freq": 3, "since": 1989}, {"lf": "inserted", "freq": 2, "since": 2001}, {"lf": "Inserts", "freq": 1, "since": 2006}]}, {"lf": "nonselective cation current", "freq": 8, "since": 1994, "vars": [{"lf": "nonselective cation current", "freq": 7, "since": 1994}, {"lf": "nonselective cation currents", "freq": 1, "since": 1995}]}, {"lf": "integrases", "freq": 7, "since": 1997, "vars": [{"lf": "integrases", "freq": 6, "since": 1997}, {"lf": "Integrases", "freq": 1, "since": 2008}]}, {"lf": "The Intravenous Nurses Society", "freq": 6, "since": 1997, "vars": [{"lf": "The Intravenous Nurses Society", "freq": 6, "since": 1997}]}, {"lf": "interpersonal negotiation strategies", "freq": 4, "since": 1993, "vars": [{"lf": "interpersonal negotiation strategies", "freq": 4, "since": 1993}]}, {"lf": "inhibitory sequences", "freq": 3, "since": 1995, "vars": [{"lf": "inhibitory sequences", "freq": 2, "since": 2002}, {"lf": "inhibitory sequence", "freq": 1, "since": 1995}]}, {"lf": "International Neuropsychological Society", "freq": 3, "since": 1995, "vars": [{"lf": "International Neuropsychological Society", "freq": 3, "since": 1995}]}, {"lf": "informatics nurse specialists", "freq": 3, "since": 1999, "vars": [{"lf": "informatics nurse specialists", "freq": 2, "since": 1999}, {"lf": "informatics nurse specialist", "freq": 1, "since": 2000}]}]}]
            """.data(using: String.Encoding.utf8)!
        }
    }
    
    static let mockEmpty = "[]".data(using: .utf8)!
}
