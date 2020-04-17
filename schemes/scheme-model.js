const db = require('../data/db-config.js');

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove,
    addStep
}

function find() {
    return db('schemes')
}

function findById(id) {
    return db('schemes')
        .where({ id })
        .first()
}

function findSteps(id) {
    return db('steps')
        .join('schemes', 'schemes.id', 'steps.scheme_id')
        .where({ scheme_id: id })
        .select('steps.id', 'schemes.scheme_name', 'steps.step_number', 'steps.instructions')
}

function add(scheme) {
    return db('schemes')
        .insert(scheme, 'id')
}

function update(changes, id ) {
    return db('schemes')
        .where({ id })
        .update(changes, 'id')
}

function remove(id) {
    return db('schemes')
        .where({ id })
        .del()
}

// 
function addStep(step, scheme_id) {
    return db('steps')
       .insert({...step, scheme_id})
}