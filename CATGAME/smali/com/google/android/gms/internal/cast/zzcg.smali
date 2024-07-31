.class public final Lcom/google/android/gms/internal/cast/zzcg;
.super Ljava/lang/Object;


# instance fields
.field private final version:Ljava/lang/String;

.field private final zzxw:Ljava/lang/String;

.field private final zzxx:I


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzcg;->zzxw:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcom/google/android/gms/internal/cast/zzcg;->zzxx:I

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzcg;->version:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    nop

    .line 2
    const-string v0, "applicationName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v1, "maxPlayers"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 4
    const-string/jumbo v2, "version"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/cast/zzcg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final getMaxPlayers()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzcg;->zzxx:I

    return v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcg;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final zzdx()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzcg;->zzxw:Ljava/lang/String;

    return-object v0
.end method
