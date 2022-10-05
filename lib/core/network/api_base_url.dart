const _baseurl = 'https://qt-payment-api.herokuapp.com/';
// : 'https://we-quick-pay-production.herokuapp.com/';
// const _BASE_URL = 'https://myclig-stage.azurewebsites.net/api';

//Todo: Post Endpoint
const loginEndpoint = '${_baseurl}auth/login';
const signupEndpoint = '${_baseurl}auth/signup';
const generateOtpApi = '${_baseurl}user/otp/generate';
const verifyOtp = '${_baseurl}user/otp/verify';
const refreshTokenApi = '${_baseurl}auth/refresh';

const bvnUpdateProfile = '${_baseurl}user';

const setPinEndpoint = '${_baseurl}user/setpin';
const saveSecretApi = '${_baseurl}user/secretquestion';
const refreshToken = '${_baseurl}user/otp/generate';
const forgotPassword = '${_baseurl}user/otp/generate';
const createWalletApi = '${_baseurl}wallet/create';
const walletPinApi = '${_baseurl}user/verifypin';
const bvnSetPin = '${_baseurl}user/verifybvn';

const accountHasPin = '${_baseurl}user/haspin';
const accountStatus = '${_baseurl}user/status';
const accountLogout = '${_baseurl}auth/invalidate';

const addBankAccount = '${_baseurl}user/otp/generate';
const verifyBankAccount = '${_baseurl}user/otp/generate';
const transfer = '${_baseurl}user/otp/generate';
const cardDeposit = '${_baseurl}user/otp/generate';
const generateRecurringInvoice = '${_baseurl}invoice/recurring';
const generateOneTimeInvoice = '${_baseurl}invoice/onetime';
const generateInvoiceLik = '${_baseurl}user/otp/generate';

//Todo: Put Endpoint
const invalidateRefreshOTP = '${_baseurl}user/otp/generate';
const changePassword = '${_baseurl}user/otp/generate';
const updateUserInfo = '${_baseurl}user/otp/generate';
const blockUser = '${_baseurl}user/otp/generate';

//Todo:Get Endpoint
const getUserProfile = '${_baseurl}user/otp/generate';
const getBanks = '${_baseurl}wallet/list-bank';
const getWalletBalanceApi = '${_baseurl}wallet/balance';
const transactionInfo = '${_baseurl}user/otp/generate';
const getWalletInfo = '${_baseurl}user/otp/generate';
const getTransactions = '${_baseurl}user/otp/generate';
const getInvoices = '${_baseurl}user/otp/generate';
