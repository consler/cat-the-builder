.class public final Lorg/catrobat/catroid/web/ServerAuthenticationConstants;
.super Ljava/lang/Object;
.source "ServerAuthenticationConstants.java"


# static fields
.field public static final CATROBAT_COUNTRY_KEY:Ljava/lang/String; = "registrationCountry"

.field public static final CATROBAT_EMAIL_KEY:Ljava/lang/String; = "registrationEmail"

.field public static final CATROBAT_PASSWORD_KEY:Ljava/lang/String; = "registrationPassword"

.field public static final CATROBAT_USERNAME_KEY:Ljava/lang/String; = "registrationUsername"

.field public static final CHECK_EMAIL_AVAILABLE_URL:Ljava/lang/String; = "https://share.catrob.at/pocketcode/api/EMailAvailable/EMailAvailable.json"

.field public static final CHECK_GOOGLE_TOKEN_URL:Ljava/lang/String; = "https://share.catrob.at/pocketcode/api/GoogleServerTokenAvailable/GoogleServerTokenAvailable.json"

.field public static final CHECK_TOKEN_URL:Ljava/lang/String; = "api/checkToken/check.json"

.field public static final CHECK_USERNAME_AVAILABLE_URL:Ljava/lang/String; = "https://share.catrob.at/pocketcode/api/UsernameAvailable/UsernameAvailable.json"

.field public static final EMAIL_AVAILABLE:Ljava/lang/String; = "email_available"

.field public static final EXCHANGE_GOOGLE_CODE_URL:Ljava/lang/String; = "https://share.catrob.at/pocketcode/api/exchangeGoogleCode/exchangeGoogleCode.json"

.field public static final FILE_SURVEY_URL_HTTP:Ljava/lang/String; = "https://share.catrob.at/api/survey/"

.field public static final FILE_TAG_URL_HTTP:Ljava/lang/String; = "https://share.catrob.at/pocketcode/api/tags/getTags.json"

.field public static final GOOGLE_LOGIN_CATROWEB_SERVER_CLIENT_ID:Ljava/lang/String; = "427226922034-r016ige5kb30q9vflqbt1h0i3arng8u1.apps.googleusercontent.com"

.field public static final GOOGLE_LOGIN_URL_APPENDING:Ljava/lang/String; = "api/loginWithGoogle/loginWithGoogle.json"

.field public static final JSON_ANSWER:Ljava/lang/String; = "answer"

.field public static final JSON_STATUS_CODE:Ljava/lang/String; = "statusCode"

.field public static final JSON_TOKEN:Ljava/lang/String; = "token"

.field public static final LOGIN_URL_APPENDING:Ljava/lang/String; = "api/login/Login.json"

.field public static final OAUTH_TOKEN_AVAILABLE:Ljava/lang/String; = "token_available"

.field public static final REGISTRATION_URL_APPENDING:Ljava/lang/String; = "api/register/Register.json"

.field public static final SERVER_RESPONSE_REGISTER_OK:Ljava/lang/Integer;

.field public static final SERVER_RESPONSE_TOKEN_OK:Ljava/lang/Integer;

.field public static final SIGNIN_EMAIL_KEY:Ljava/lang/String; = "email"

.field public static final SIGNIN_GOOGLE_CODE_KEY:Ljava/lang/String; = "code"

.field public static final SIGNIN_ID_TOKEN:Ljava/lang/String; = "id_token"

.field public static final SIGNIN_LOCALE_KEY:Ljava/lang/String; = "locale"

.field public static final SIGNIN_OAUTH_ID_KEY:Ljava/lang/String; = "id"

.field public static final SIGNIN_USERNAME_KEY:Ljava/lang/String; = "username"

.field public static final TOKEN_CODE_INVALID:Ljava/lang/String; = "-1"

.field public static final TOKEN_LENGTH:I = 0x20

.field public static final USERNAME_AVAILABLE:Ljava/lang/String; = "username_available"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/16 v0, 0xc9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/web/ServerAuthenticationConstants;->SERVER_RESPONSE_REGISTER_OK:Ljava/lang/Integer;

    .line 42
    const/16 v0, 0xc8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/web/ServerAuthenticationConstants;->SERVER_RESPONSE_TOKEN_OK:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
