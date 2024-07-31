.class final Lcom/google/android/gms/internal/cast/zzbw;
.super Lcom/google/android/gms/internal/cast/zzbx;


# instance fields
.field private final synthetic zzww:Lcom/google/android/gms/internal/cast/zzbs;

.field private final synthetic zzwx:Ljava/lang/String;

.field private final synthetic zzwy:Lorg/json/JSONObject;

.field private final synthetic zzwz:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzbs;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzww:Lcom/google/android/gms/internal/cast/zzbs;

    iput p2, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzwz:I

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzwx:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzwy:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzbx;-><init>(Lcom/google/android/gms/internal/cast/zzbs;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 7

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzwz:I

    .line 3
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    .line 9
    move v3, v1

    goto :goto_0

    .line 7
    :cond_0
    move v3, v4

    goto :goto_0

    .line 6
    :cond_1
    move v3, v5

    goto :goto_0

    .line 8
    :cond_2
    move v3, v6

    goto :goto_0

    .line 4
    :cond_3
    move v3, v2

    goto :goto_0

    .line 5
    :cond_4
    nop

    .line 10
    :goto_0
    nop

    .line 11
    if-nez v3, :cond_5

    .line 12
    nop

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzxb:Lcom/google/android/gms/internal/cast/zzdu;

    .line 14
    const-wide/16 v3, -0x1

    const/16 v5, 0x7d1

    const/4 v6, 0x0

    .line 15
    invoke-interface {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/cast/zzdu;->zza(JILjava/lang/Object;)V

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzbs;->zzdw()Lcom/google/android/gms/internal/cast/zzdo;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzwz:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "sendPlayerRequest for unsupported playerState: %d"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdo;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-void

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzww:Lcom/google/android/gms/internal/cast/zzbs;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzwx:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzbw;->zzwy:Lorg/json/JSONObject;

    .line 19
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzxb:Lcom/google/android/gms/internal/cast/zzdu;

    .line 20
    invoke-static {v0, v1, v3, v2, v4}, Lcom/google/android/gms/internal/cast/zzbs;->zza(Lcom/google/android/gms/internal/cast/zzbs;Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/internal/cast/zzdu;)V

    .line 21
    return-void
.end method
