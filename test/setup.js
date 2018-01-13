require('should')
require('should-sinon')
require('coffee-register')
const sinon = require('sinon')

global.sinonSandbox = sinon.sandbox.create();
afterEach('restore sandbox after tests', () => sinonSandbox.restore());
