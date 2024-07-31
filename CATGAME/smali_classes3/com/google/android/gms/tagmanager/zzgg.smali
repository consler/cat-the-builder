.class final Lcom/google/android/gms/tagmanager/zzgg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/Logger;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/Exception;)V
    .locals 1

    .line 4
    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/zzdi;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzav(Ljava/lang/String;)V

    .line 3
    return-void
.end method

.method public final getLogLevel()I
    .locals 4

    .line 14
    sget v0, Lcom/google/android/gms/tagmanager/zzdi;->zzyr:I

    .line 15
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    .line 20
    nop

    .line 21
    return v2

    .line 17
    :cond_0
    return v1

    .line 18
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 19
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final info(Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzaw(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public final setLogLevel(I)V
    .locals 0

    .line 12
    const-string p1, "GA uses GTM logger. Please use TagManager.setLogLevel(int) instead."

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzac(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public final verbose(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzab(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public final warn(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzac(Ljava/lang/String;)V

    .line 11
    return-void
.end method
