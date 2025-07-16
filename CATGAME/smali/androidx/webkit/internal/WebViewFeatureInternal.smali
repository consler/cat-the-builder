.class public final enum Landroidx/webkit/internal/WebViewFeatureInternal;
.super Ljava/lang/Enum;
.source "WebViewFeatureInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/internal/WebViewFeatureInternal$LAZY_HOLDER;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/webkit/internal/WebViewFeatureInternal;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/webkit/internal/WebViewFeatureInternal;

.field static final synthetic $assertionsDisabled:Z = false

.field public static final enum CREATE_WEB_MESSAGE_CHANNEL:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum DISABLED_ACTION_MODE_MENU_ITEMS:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum FORCE_DARK:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum FORCE_DARK_STRATEGY:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum GET_WEB_CHROME_CLIENT:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum GET_WEB_VIEW_CLIENT:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum GET_WEB_VIEW_RENDERER:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum MULTI_PROCESS_QUERY:Landroidx/webkit/internal/WebViewFeatureInternal;

.field private static final NOT_SUPPORTED_BY_FRAMEWORK:I = -0x1

.field public static final enum OFF_SCREEN_PRERASTER:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum POST_WEB_MESSAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum PROXY_OVERRIDE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum RECEIVE_HTTP_ERROR:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum RECEIVE_WEB_RESOURCE_ERROR:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_ENABLE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_HIT:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_PRIVACY_POLICY_URL:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_RESPONSE_PROCEED:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SAFE_BROWSING_WHITELIST:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SERVICE_WORKER_BASIC_USAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SERVICE_WORKER_BLOCK_NETWORK_LOADS:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SERVICE_WORKER_CACHE_MODE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SERVICE_WORKER_CONTENT_ACCESS:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SERVICE_WORKER_FILE_ACCESS:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SHOULD_OVERRIDE_WITH_REDIRECTS:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum START_SAFE_BROWSING:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum SUPPRESS_ERROR_PAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum TRACING_CONTROLLER_BASIC_USAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum VISUAL_STATE_CALLBACK_FEATURE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_MESSAGE_CALLBACK_ON_MESSAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_MESSAGE_LISTENER:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_MESSAGE_PORT_CLOSE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_MESSAGE_PORT_POST_MESSAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_RESOURCE_ERROR_GET_CODE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_RESOURCE_ERROR_GET_DESCRIPTION:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_RESOURCE_REQUEST_IS_REDIRECT:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

.field public static final enum WEB_VIEW_RENDERER_TERMINATE:Landroidx/webkit/internal/WebViewFeatureInternal;


# instance fields
.field private final mInternalFeatureValue:Ljava/lang/String;

.field private final mOsVersion:I

.field private final mPublicFeatureValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 48

    .line 64
    new-instance v6, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v1, "VISUAL_STATE_CALLBACK_FEATURE"

    const/4 v2, 0x0

    const-string v3, "VISUAL_STATE_CALLBACK"

    const-string v4, "VISUAL_STATE_CALLBACK"

    const/16 v5, 0x17

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Landroidx/webkit/internal/WebViewFeatureInternal;->VISUAL_STATE_CALLBACK_FEATURE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 72
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "OFF_SCREEN_PRERASTER"

    const/4 v9, 0x1

    const-string v10, "OFF_SCREEN_PRERASTER"

    const-string v11, "OFF_SCREEN_PRERASTER"

    const/16 v12, 0x17

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->OFF_SCREEN_PRERASTER:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 80
    new-instance v1, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v14, "SAFE_BROWSING_ENABLE"

    const/4 v15, 0x2

    const-string v16, "SAFE_BROWSING_ENABLE"

    const-string v17, "SAFE_BROWSING_ENABLE"

    const/16 v18, 0x1a

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ENABLE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 88
    new-instance v2, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "DISABLED_ACTION_MODE_MENU_ITEMS"

    const/4 v9, 0x3

    const-string v10, "DISABLED_ACTION_MODE_MENU_ITEMS"

    const-string v11, "DISABLED_ACTION_MODE_MENU_ITEMS"

    const/16 v12, 0x18

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v2, Landroidx/webkit/internal/WebViewFeatureInternal;->DISABLED_ACTION_MODE_MENU_ITEMS:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 95
    new-instance v3, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v14, "START_SAFE_BROWSING"

    const/4 v15, 0x4

    const-string v16, "START_SAFE_BROWSING"

    const-string v17, "START_SAFE_BROWSING"

    const/16 v18, 0x1b

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Landroidx/webkit/internal/WebViewFeatureInternal;->START_SAFE_BROWSING:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 102
    new-instance v4, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "SAFE_BROWSING_WHITELIST"

    const/4 v9, 0x5

    const-string v10, "SAFE_BROWSING_WHITELIST"

    const-string v11, "SAFE_BROWSING_WHITELIST"

    const/16 v12, 0x1b

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v4, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_WHITELIST:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 109
    new-instance v5, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v14, "SAFE_BROWSING_PRIVACY_POLICY_URL"

    const/4 v15, 0x6

    const-string v16, "SAFE_BROWSING_PRIVACY_POLICY_URL"

    const-string v17, "SAFE_BROWSING_PRIVACY_POLICY_URL"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v5, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_PRIVACY_POLICY_URL:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 116
    new-instance v13, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v8, "SERVICE_WORKER_BASIC_USAGE"

    const/4 v9, 0x7

    const-string v10, "SERVICE_WORKER_BASIC_USAGE"

    const-string v11, "SERVICE_WORKER_BASIC_USAGE"

    const/16 v12, 0x18

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v13, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_BASIC_USAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 124
    new-instance v7, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v15, "SERVICE_WORKER_CACHE_MODE"

    const/16 v16, 0x8

    const-string v17, "SERVICE_WORKER_CACHE_MODE"

    const-string v18, "SERVICE_WORKER_CACHE_MODE"

    const/16 v19, 0x18

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v7, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_CACHE_MODE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 132
    new-instance v8, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v21, "SERVICE_WORKER_CONTENT_ACCESS"

    const/16 v22, 0x9

    const-string v23, "SERVICE_WORKER_CONTENT_ACCESS"

    const-string v24, "SERVICE_WORKER_CONTENT_ACCESS"

    const/16 v25, 0x18

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v8, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_CONTENT_ACCESS:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 140
    new-instance v9, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v15, "SERVICE_WORKER_FILE_ACCESS"

    const/16 v16, 0xa

    const-string v17, "SERVICE_WORKER_FILE_ACCESS"

    const-string v18, "SERVICE_WORKER_FILE_ACCESS"

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v9, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_FILE_ACCESS:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 148
    new-instance v10, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v21, "SERVICE_WORKER_BLOCK_NETWORK_LOADS"

    const/16 v22, 0xb

    const-string v23, "SERVICE_WORKER_BLOCK_NETWORK_LOADS"

    const-string v24, "SERVICE_WORKER_BLOCK_NETWORK_LOADS"

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v10, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_BLOCK_NETWORK_LOADS:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 155
    new-instance v11, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v15, "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST"

    const/16 v16, 0xc

    const-string v17, "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST"

    const-string v18, "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST"

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v11, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 163
    new-instance v12, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v21, "RECEIVE_WEB_RESOURCE_ERROR"

    const/16 v22, 0xd

    const-string v23, "RECEIVE_WEB_RESOURCE_ERROR"

    const-string v24, "RECEIVE_WEB_RESOURCE_ERROR"

    const/16 v25, 0x17

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v12, Landroidx/webkit/internal/WebViewFeatureInternal;->RECEIVE_WEB_RESOURCE_ERROR:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 171
    new-instance v20, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v15, "RECEIVE_HTTP_ERROR"

    const/16 v16, 0xe

    const-string v17, "RECEIVE_HTTP_ERROR"

    const-string v18, "RECEIVE_HTTP_ERROR"

    const/16 v19, 0x17

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v20, Landroidx/webkit/internal/WebViewFeatureInternal;->RECEIVE_HTTP_ERROR:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 179
    new-instance v14, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v22, "SHOULD_OVERRIDE_WITH_REDIRECTS"

    const/16 v23, 0xf

    const-string v24, "SHOULD_OVERRIDE_WITH_REDIRECTS"

    const-string v25, "SHOULD_OVERRIDE_WITH_REDIRECTS"

    const/16 v26, 0x18

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v14, Landroidx/webkit/internal/WebViewFeatureInternal;->SHOULD_OVERRIDE_WITH_REDIRECTS:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 187
    new-instance v15, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v28, "SAFE_BROWSING_HIT"

    const/16 v29, 0x10

    const-string v30, "SAFE_BROWSING_HIT"

    const-string v31, "SAFE_BROWSING_HIT"

    const/16 v32, 0x1b

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v15, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_HIT:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 194
    new-instance v16, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v22, "WEB_RESOURCE_REQUEST_IS_REDIRECT"

    const/16 v23, 0x11

    const-string v24, "WEB_RESOURCE_REQUEST_IS_REDIRECT"

    const-string v25, "WEB_RESOURCE_REQUEST_IS_REDIRECT"

    move-object/from16 v21, v16

    invoke-direct/range {v21 .. v26}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v16, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_RESOURCE_REQUEST_IS_REDIRECT:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 201
    new-instance v17, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v28, "WEB_RESOURCE_ERROR_GET_DESCRIPTION"

    const/16 v29, 0x12

    const-string v30, "WEB_RESOURCE_ERROR_GET_DESCRIPTION"

    const-string v31, "WEB_RESOURCE_ERROR_GET_DESCRIPTION"

    const/16 v32, 0x17

    move-object/from16 v27, v17

    invoke-direct/range {v27 .. v32}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v17, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_RESOURCE_ERROR_GET_DESCRIPTION:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 208
    new-instance v18, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v22, "WEB_RESOURCE_ERROR_GET_CODE"

    const/16 v23, 0x13

    const-string v24, "WEB_RESOURCE_ERROR_GET_CODE"

    const-string v25, "WEB_RESOURCE_ERROR_GET_CODE"

    const/16 v26, 0x17

    move-object/from16 v21, v18

    invoke-direct/range {v21 .. v26}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v18, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_RESOURCE_ERROR_GET_CODE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 215
    new-instance v19, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v28, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    const/16 v29, 0x14

    const-string v30, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    const-string v31, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    const/16 v32, 0x1b

    move-object/from16 v27, v19

    invoke-direct/range {v27 .. v32}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v19, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 222
    new-instance v27, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v22, "SAFE_BROWSING_RESPONSE_PROCEED"

    const/16 v23, 0x15

    const-string v24, "SAFE_BROWSING_RESPONSE_PROCEED"

    const-string v25, "SAFE_BROWSING_RESPONSE_PROCEED"

    const/16 v26, 0x1b

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v26}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v27, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_RESPONSE_PROCEED:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 229
    new-instance v21, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v29, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    const/16 v30, 0x16

    const-string v31, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    const-string v32, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    const/16 v33, 0x1b

    move-object/from16 v28, v21

    invoke-direct/range {v28 .. v33}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v21, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 237
    new-instance v22, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v35, "WEB_MESSAGE_PORT_POST_MESSAGE"

    const/16 v36, 0x17

    const-string v37, "WEB_MESSAGE_PORT_POST_MESSAGE"

    const-string v38, "WEB_MESSAGE_PORT_POST_MESSAGE"

    const/16 v39, 0x17

    move-object/from16 v34, v22

    invoke-direct/range {v34 .. v39}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v22, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_PORT_POST_MESSAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 244
    new-instance v23, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v29, "WEB_MESSAGE_PORT_CLOSE"

    const/16 v30, 0x18

    const-string v31, "WEB_MESSAGE_PORT_CLOSE"

    const-string v32, "WEB_MESSAGE_PORT_CLOSE"

    const/16 v33, 0x17

    move-object/from16 v28, v23

    invoke-direct/range {v28 .. v33}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v23, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_PORT_CLOSE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 254
    new-instance v24, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v35, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    const/16 v36, 0x19

    const-string v37, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    const-string v38, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    move-object/from16 v34, v24

    invoke-direct/range {v34 .. v39}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v24, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 261
    new-instance v25, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v29, "CREATE_WEB_MESSAGE_CHANNEL"

    const/16 v30, 0x1a

    const-string v31, "CREATE_WEB_MESSAGE_CHANNEL"

    const-string v32, "CREATE_WEB_MESSAGE_CHANNEL"

    move-object/from16 v28, v25

    invoke-direct/range {v28 .. v33}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v25, Landroidx/webkit/internal/WebViewFeatureInternal;->CREATE_WEB_MESSAGE_CHANNEL:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 268
    new-instance v26, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v35, "POST_WEB_MESSAGE"

    const/16 v36, 0x1b

    const-string v37, "POST_WEB_MESSAGE"

    const-string v38, "POST_WEB_MESSAGE"

    move-object/from16 v34, v26

    invoke-direct/range {v34 .. v39}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v26, Landroidx/webkit/internal/WebViewFeatureInternal;->POST_WEB_MESSAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 275
    new-instance v34, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v29, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    const/16 v30, 0x1c

    const-string v31, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    const-string v32, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    move-object/from16 v28, v34

    invoke-direct/range {v28 .. v33}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v34, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_CALLBACK_ON_MESSAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 281
    new-instance v28, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v36, "GET_WEB_VIEW_CLIENT"

    const/16 v37, 0x1d

    const-string v38, "GET_WEB_VIEW_CLIENT"

    const-string v39, "GET_WEB_VIEW_CLIENT"

    const/16 v40, 0x1a

    move-object/from16 v35, v28

    invoke-direct/range {v35 .. v40}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v28, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_VIEW_CLIENT:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 287
    new-instance v29, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v42, "GET_WEB_CHROME_CLIENT"

    const/16 v43, 0x1e

    const-string v44, "GET_WEB_CHROME_CLIENT"

    const-string v45, "GET_WEB_CHROME_CLIENT"

    const/16 v46, 0x1a

    move-object/from16 v41, v29

    invoke-direct/range {v41 .. v46}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v29, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_CHROME_CLIENT:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 290
    new-instance v30, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v36, "GET_WEB_VIEW_RENDERER"

    const/16 v37, 0x1f

    const-string v38, "GET_WEB_VIEW_RENDERER"

    const-string v39, "GET_WEB_VIEW_RENDERER"

    const/16 v40, 0x1d

    move-object/from16 v35, v30

    invoke-direct/range {v35 .. v40}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v30, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_VIEW_RENDERER:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 292
    new-instance v31, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v42, "WEB_VIEW_RENDERER_TERMINATE"

    const/16 v43, 0x20

    const-string v44, "WEB_VIEW_RENDERER_TERMINATE"

    const-string v45, "WEB_VIEW_RENDERER_TERMINATE"

    const/16 v46, 0x1d

    move-object/from16 v41, v31

    invoke-direct/range {v41 .. v46}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v31, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_VIEW_RENDERER_TERMINATE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 302
    new-instance v32, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v36, "TRACING_CONTROLLER_BASIC_USAGE"

    const/16 v37, 0x21

    const-string v38, "TRACING_CONTROLLER_BASIC_USAGE"

    const-string v39, "TRACING_CONTROLLER_BASIC_USAGE"

    const/16 v40, 0x1c

    move-object/from16 v35, v32

    invoke-direct/range {v35 .. v40}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v32, Landroidx/webkit/internal/WebViewFeatureInternal;->TRACING_CONTROLLER_BASIC_USAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 312
    new-instance v33, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v42, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    const/16 v43, 0x22

    const-string v44, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    const-string v45, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    move-object/from16 v41, v33

    invoke-direct/range {v41 .. v46}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v33, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    move-object/from16 v35, v15

    .line 322
    new-instance v15, Landroidx/webkit/internal/WebViewFeatureInternal;

    move-object/from16 v36, v14

    const-string v14, "PROXY_OVERRIDE:3"

    move-object/from16 v37, v12

    const-string v12, "PROXY_OVERRIDE"

    move-object/from16 v38, v11

    const/16 v11, 0x23

    invoke-direct {v15, v12, v11, v12, v14}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v15, Landroidx/webkit/internal/WebViewFeatureInternal;->PROXY_OVERRIDE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 329
    new-instance v12, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v14, "SUPPRESS_ERROR_PAGE"

    const/16 v11, 0x24

    invoke-direct {v12, v14, v11, v14, v14}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Landroidx/webkit/internal/WebViewFeatureInternal;->SUPPRESS_ERROR_PAGE:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 334
    new-instance v14, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v11, "MULTI_PROCESS_QUERY"

    move-object/from16 v41, v12

    const/16 v12, 0x25

    invoke-direct {v14, v11, v12, v11, v11}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v14, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROCESS_QUERY:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 341
    new-instance v11, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v12, "FORCE_DARK"

    move-object/from16 v43, v14

    const/16 v14, 0x26

    invoke-direct {v11, v12, v14, v12, v12}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Landroidx/webkit/internal/WebViewFeatureInternal;->FORCE_DARK:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 348
    new-instance v12, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v14, "FORCE_DARK_BEHAVIOR"

    move-object/from16 v45, v11

    const-string v11, "FORCE_DARK_STRATEGY"

    move-object/from16 v46, v15

    const/16 v15, 0x27

    invoke-direct {v12, v11, v15, v11, v14}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Landroidx/webkit/internal/WebViewFeatureInternal;->FORCE_DARK_STRATEGY:Landroidx/webkit/internal/WebViewFeatureInternal;

    .line 356
    new-instance v11, Landroidx/webkit/internal/WebViewFeatureInternal;

    const-string v14, "WEB_MESSAGE_LISTENER"

    const/16 v15, 0x28

    invoke-direct {v11, v14, v15, v14, v14}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_LISTENER:Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v14, 0x29

    new-array v14, v14, [Landroidx/webkit/internal/WebViewFeatureInternal;

    const/16 v47, 0x0

    aput-object v6, v14, v47

    const/4 v6, 0x1

    aput-object v0, v14, v6

    const/4 v0, 0x2

    aput-object v1, v14, v0

    const/4 v0, 0x3

    aput-object v2, v14, v0

    const/4 v0, 0x4

    aput-object v3, v14, v0

    const/4 v0, 0x5

    aput-object v4, v14, v0

    const/4 v0, 0x6

    aput-object v5, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    const/16 v0, 0x8

    aput-object v7, v14, v0

    const/16 v0, 0x9

    aput-object v8, v14, v0

    const/16 v0, 0xa

    aput-object v9, v14, v0

    const/16 v0, 0xb

    aput-object v10, v14, v0

    const/16 v0, 0xc

    aput-object v38, v14, v0

    const/16 v0, 0xd

    aput-object v37, v14, v0

    const/16 v0, 0xe

    aput-object v20, v14, v0

    const/16 v0, 0xf

    aput-object v36, v14, v0

    const/16 v0, 0x10

    aput-object v35, v14, v0

    const/16 v0, 0x11

    aput-object v16, v14, v0

    const/16 v0, 0x12

    aput-object v17, v14, v0

    const/16 v0, 0x13

    aput-object v18, v14, v0

    const/16 v0, 0x14

    aput-object v19, v14, v0

    const/16 v0, 0x15

    aput-object v27, v14, v0

    const/16 v0, 0x16

    aput-object v21, v14, v0

    const/16 v0, 0x17

    aput-object v22, v14, v0

    const/16 v0, 0x18

    aput-object v23, v14, v0

    const/16 v0, 0x19

    aput-object v24, v14, v0

    const/16 v0, 0x1a

    aput-object v25, v14, v0

    const/16 v0, 0x1b

    aput-object v26, v14, v0

    const/16 v0, 0x1c

    aput-object v34, v14, v0

    const/16 v0, 0x1d

    aput-object v28, v14, v0

    const/16 v0, 0x1e

    aput-object v29, v14, v0

    const/16 v0, 0x1f

    aput-object v30, v14, v0

    const/16 v0, 0x20

    aput-object v31, v14, v0

    const/16 v0, 0x21

    aput-object v32, v14, v0

    const/16 v0, 0x22

    aput-object v33, v14, v0

    const/16 v0, 0x23

    aput-object v46, v14, v0

    const/16 v0, 0x24

    aput-object v41, v14, v0

    const/16 v0, 0x25

    aput-object v43, v14, v0

    const/16 v0, 0x26

    aput-object v45, v14, v0

    const/16 v0, 0x27

    aput-object v12, v14, v0

    aput-object v11, v14, v15

    .line 57
    sput-object v14, Landroidx/webkit/internal/WebViewFeatureInternal;->$VALUES:[Landroidx/webkit/internal/WebViewFeatureInternal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 376
    invoke-direct/range {v0 .. v5}, Landroidx/webkit/internal/WebViewFeatureInternal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 388
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 391
    iput-object p3, p0, Landroidx/webkit/internal/WebViewFeatureInternal;->mPublicFeatureValue:Ljava/lang/String;

    .line 392
    iput-object p4, p0, Landroidx/webkit/internal/WebViewFeatureInternal;->mInternalFeatureValue:Ljava/lang/String;

    .line 393
    iput p5, p0, Landroidx/webkit/internal/WebViewFeatureInternal;->mOsVersion:I

    return-void
.end method

.method public static getFeature(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;
    .locals 5

    .line 402
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->values()[Landroidx/webkit/internal/WebViewFeatureInternal;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 403
    iget-object v4, v3, Landroidx/webkit/internal/WebViewFeatureInternal;->mPublicFeatureValue:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown feature "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;
    .locals 2

    .line 446
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by the current version of the framework and the current WebView APK"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getWebViewApkFeaturesForTesting()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 437
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal$LAZY_HOLDER;->WEBVIEW_APK_FEATURES:Ljava/util/Set;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/webkit/internal/WebViewFeatureInternal;
    .locals 1

    .line 57
    const-class v0, Landroidx/webkit/internal/WebViewFeatureInternal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/webkit/internal/WebViewFeatureInternal;

    return-object p0
.end method

.method public static values()[Landroidx/webkit/internal/WebViewFeatureInternal;
    .locals 1

    .line 57
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->$VALUES:[Landroidx/webkit/internal/WebViewFeatureInternal;

    invoke-virtual {v0}, [Landroidx/webkit/internal/WebViewFeatureInternal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/webkit/internal/WebViewFeatureInternal;

    return-object v0
.end method


# virtual methods
.method public isSupportedByFramework()Z
    .locals 3

    .line 415
    iget v0, p0, Landroidx/webkit/internal/WebViewFeatureInternal;->mOsVersion:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 418
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Landroidx/webkit/internal/WebViewFeatureInternal;->mOsVersion:I

    if-lt v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isSupportedByWebView()Z
    .locals 2

    .line 425
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal$LAZY_HOLDER;->WEBVIEW_APK_FEATURES:Ljava/util/Set;

    iget-object v1, p0, Landroidx/webkit/internal/WebViewFeatureInternal;->mInternalFeatureValue:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->containsFeature(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
