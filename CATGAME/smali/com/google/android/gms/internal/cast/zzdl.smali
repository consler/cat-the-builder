.class public final Lcom/google/android/gms/internal/cast/zzdl;
.super Ljava/lang/Object;


# static fields
.field public static zzaaa:Z

.field public static final zzzt:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/internal/cast/zzct;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzzu:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/internal/cast/zzeh;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzzv:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/internal/cast/zzei;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzzw:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzzx:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzzy:Ljava/nio/charset/Charset;

.field private static final zzzz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdl;->zzzt:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdl;->zzzu:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 3
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdl;->zzzv:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 4
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdl;->zzzw:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 5
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdl;->zzzx:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 6
    nop

    .line 7
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_1

    .line 11
    :catch_0
    move-exception v0

    goto :goto_0

    .line 9
    :catch_1
    move-exception v0

    .line 10
    nop

    .line 12
    :goto_0
    const/4 v0, 0x0

    :goto_1
    sput-object v0, Lcom/google/android/gms/internal/cast/zzdl;->zzzy:Ljava/nio/charset/Charset;

    .line 13
    nop

    .line 14
    const-string v0, "com.google.cast.multizone"

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzdc;->zzr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdl;->zzzz:Ljava/lang/String;

    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/cast/zzdl;->zzaaa:Z

    return-void
.end method
