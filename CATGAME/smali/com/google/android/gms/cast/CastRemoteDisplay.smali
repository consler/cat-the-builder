.class public final Lcom/google/android/gms/cast/CastRemoteDisplay;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;,
        Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;,
        Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;,
        Lcom/google/android/gms/cast/CastRemoteDisplay$Configuration;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONFIGURATION_INTERACTIVE_NONREALTIME:I = 0x2

.field public static final CONFIGURATION_INTERACTIVE_REALTIME:I = 0x1

.field public static final CONFIGURATION_NONINTERACTIVE:I = 0x3

.field public static final CastRemoteDisplayApi:Lcom/google/android/gms/cast/CastRemoteDisplayApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_INT_SESSION_ENDED_STATUS_CODE:Ljava/lang/String; = "extra_int_session_ended_status_code"

.field private static final zzad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/internal/cast/zzeh;",
            "Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lcom/google/android/gms/cast/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/CastRemoteDisplay;->zzad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 6
    new-instance v1, Lcom/google/android/gms/common/api/Api;

    sget-object v2, Lcom/google/android/gms/internal/cast/zzdl;->zzzu:Lcom/google/android/gms/common/api/Api$ClientKey;

    const-string v3, "CastRemoteDisplay.API"

    invoke-direct {v1, v3, v0, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v1, Lcom/google/android/gms/cast/CastRemoteDisplay;->API:Lcom/google/android/gms/common/api/Api;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdx;

    sget-object v1, Lcom/google/android/gms/cast/CastRemoteDisplay;->API:Lcom/google/android/gms/common/api/Api;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdx;-><init>(Lcom/google/android/gms/common/api/Api;)V

    sput-object v0, Lcom/google/android/gms/cast/CastRemoteDisplay;->CastRemoteDisplayApi:Lcom/google/android/gms/cast/CastRemoteDisplayApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClient(Landroid/content/Context;)Lcom/google/android/gms/cast/CastRemoteDisplayClient;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static final isRemoteDisplaySdkSupported(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/zzdd;->initialize(Landroid/content/Context;)V

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/cast/zzdd;->zzzs:Lcom/google/android/gms/flags/Flag;

    invoke-virtual {p0}, Lcom/google/android/gms/flags/Flag;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
