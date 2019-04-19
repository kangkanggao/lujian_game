package com.lujian.game.utils;

public class AlipayConfig {

	/**
	 * 沙箱测试start 需要手机安装沙箱支付寶
	 *  账号：rnehet2161@sandbox.com
	 *  支付密碼：111111
	 *  登陸密碼：111111
	 *  
	 */
	public static String APPID = "2016092700607988";
	// 私钥 pkcs8格式的
	public static String RSA_PRIVATE_KEY ="MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCcX+P20jeLu8wGXRwHEMfbbVqlCtw4gTLpcwKtaslpNQC56kW8cEGG1OL1y5iaxhCXI1F5nSisk+iIza3x95di8pY8pcD8NmgCB2hjFOzFBilzSltMy6ZSSJI2k2DFtZMoRcovhKFbYBQElB1hjAwUd3KjuGrUAPT2JUz8sTjjMQnTG/n/uSrn82QqcWgVJfrBveuTAClZtH2fVZYIbFXg9ZcdJBfZUgzELNXTMryaSEcbPq/0Jvxvi+kvFLYsHFiz83G7PCWYzzooeVqcxGcGkUF9ZIhpUc4lBpNTsUIChMKkU3jI1+H/JbNRMdyXOET4n2s+Ydp42Aa3Lz65xyPRAgMBAAECggEAey9C2s4ROb+P4rd4e8xpVF8Z2AftIYoNvD+ArXIBBiLd1pdJpj9cL0YHII/pQIukyBrndQEr6H9/4Dz+uS1NEYJ+fXopw8VsO6TwQ5VZS4AmKQ87Swzmkc1feSSySC1YppILy1EU93GBc3Xmi1CSt5C9O2HsreOvFTSfKDTH1pgorXCZG6L758u2Cj2nlyEl93eFEq/8dnRYVAFgZcm5lI1Io03O+JczVAbtOOEX3ombzDccR3muILXJVYgud4cnRROnpIdOB+hVm4lCchac1WsDi+ro/bCbJ9sU6wA1Xa6XDjh96bqe34vKK6+KOAelDOq9ZeEs633idUB5i6z7zQKBgQD6Zo2rUBhwbzbHGgglC32ug5inE7oXqVXNlKqVtk8D6e6VYbq33r7Qp4nqiJUZUy+bBj7w7N8dsx2xzn1X9I8aZFbCyZgLTfqMRu9TbJYEeSij6kVjHKNDnDIpdhocCc9e7MSLbF3XCNocO14UoO+aLavpIWqDxacjyweP406DVwKBgQCf3xMOuSr2fLm1ZXu0MzZQHgu830mkvszspP4Oe1mbBjYfdMxc7WEbt0U/wgxTcL3eKQcF5kLmBLQGHxrXcURtO8cgNVi9CfmPH4hm1/3Lq6l/5IAtS3vaybKTrS20s6PJogzJcJEHMplaYlXtGrxMI61i8KXdOYbPYTlYvroBFwKBgQDtwQBVIGkEIOUfKV2AZye/0x3XzkhM/TEGUVmja4YdDjrGRhQ3T91YWyv9sA/6Ct1R0h1jP1YeahsQ4CJtqD1Ubt9ednHSkgkKtrO5P4o11yC6es/FasSuhpmueoASDVKELEX2qD911ObcFZaf+atndmQbqOntEng/6SBWBBthYwKBgH+AHifQ34XDRSx5KiY17awJulzAS3BbRv24PHH6SCVN195QfSfjnV3IVS8bKE9ni9VhLRu0X0gpGhYDupl12Rew5Ac45HOnP+O4R0WWHu/PERhReTQmjjmYQJZsOBZ0ajzFw6Ln5pIx9YHTCSpW9zNWBNLyj6WWWoCLznuLaLazAoGBANRqsE4wrH0OpI1vfRuW8P5KKdPH9kOeW8FDaNQ1n9WwzAzDuEbjvXPnnD/q8d0Fi/pzL8Lh6IeMX2aWxnoCeuYqQDGzydqacXNhNVboqU3YZyuVQUGpbnEYAqf2x4AM3R/FQSLcwzPfBsbZqck4NYvEnWfcm0EP2s8RHigfzdKf";
			// 支付宝公钥
	public static String ALIPAY_PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnF/j9tI3i7vMBl0cBxDH221apQrcOIEy6XMCrWrJaTUAuepFvHBBhtTi9cuYmsYQlyNReZ0orJPoiM2t8feXYvKWPKXA/DZoAgdoYxTsxQYpc0pbTMumUkiSNpNgxbWTKEXKL4ShW2AUBJQdYYwMFHdyo7hq1AD09iVM/LE44zEJ0xv5/7kq5/NkKnFoFSX6wb3rkwApWbR9n1WWCGxV4PWXHSQX2VIMxCzV0zK8mkhHGz6v9Cb8b4vpLxS2LBxYs/NxuzwlmM86KHlanMRnBpFBfWSIaVHOJQaTU7FCAoTCpFN4yNfh/yWzUTHclzhE+J9rPmHaeNgGty8+uccj0QIDAQAB";
	// 服务器异步通知页面路径 需http://或者https://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:6284/game/front/return";
	// 页面跳转同步通知页面路径 需http://或者https://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	// 商户可以自定义同步跳转地址
	public static String return_url = "http://localhost:6284/game/front/return";
	// 请求网关地址test
	public static String URL = "https://openapi.alipaydev.com/gateway.do";
	// 编码
	public static String CHARSET = "UTF-8";
	// 返回格式
	public static String FORMAT = "json";
	// 日志记录目录
	public static String log_path = "/log";
	// RSA2
	public static String SIGNTYPE = "RSA2";
	/**
	 * 沙箱测试end
	 *
	 */

}
