//
//  Result+Value.swift
//  Poly
//
//  Created by Mathew Polzin on 12/5/18.
//

internal extension Swift.Result {
    var value: Success? {
        guard case .success(let val) = self else {
            return nil
        }
        return val
    }

    var error: Failure? {
        guard case .failure(let err) = self else {
            return nil
        }
        return err
    }
}
