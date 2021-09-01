import {
    callGenWitness as genWitness,
    callGetSignalByName as getSignalByName,
} from 'circom-helper'
const ff = require('ffjavascript')

const stringifyBigInts: (obj: object) => any = ff.utils.stringifyBigInts

describe('preimage', () => {
    it('should prove knowledge of a hash preimage', async () => {
        const circuit = 'preimage_2'

        const circuitInputs = stringifyBigInts({
            in: [123, 456],
            selector: 1,
        })

        const witness = await genWitness(circuit, circuitInputs)
        const output = await getSignalByName(circuit, witness, 'main.out')

        //expect(output.toString()).toEqual('0')
        console.log(output)

    })
})
