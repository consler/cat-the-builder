.class public final Lcom/google/android/gms/internal/gtm/zzda;
.super Lcom/google/android/gms/internal/gtm/zzan;


# instance fields
.field private zzaau:Ljava/lang/String;

.field private zzaav:Ljava/lang/String;

.field protected zzaax:I

.field private zzacu:I

.field protected zzacv:Z

.field private zzacw:Z

.field private zzacx:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzan;-><init>(Lcom/google/android/gms/internal/gtm/zzap;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final zzaw()V
    .locals 6

    .line 3
    nop

    .line 4
    nop

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6
    nop

    .line 7
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    const-string v1, "PackageManager doesn\'t know about the app package"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 12
    :goto_0
    if-nez v0, :cond_0

    .line 13
    const-string v0, "Couldn\'t get ApplicationInfo to load global config"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzt(Ljava/lang/String;)V

    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 16
    if-eqz v0, :cond_e

    .line 17
    const-string v1, "com.google.android.gms.analytics.globalConfigResource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 18
    if-lez v0, :cond_e

    .line 19
    new-instance v1, Lcom/google/android/gms/internal/gtm/zzca;

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzcm()Lcom/google/android/gms/internal/gtm/zzap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/gtm/zzca;-><init>(Lcom/google/android/gms/internal/gtm/zzap;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbo;->zzq(I)Lcom/google/android/gms/internal/gtm/zzbn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzcc;

    .line 21
    if-eqz v0, :cond_e

    .line 22
    nop

    .line 23
    const-string v1, "Loading global XML config values"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzam;->zzq(Ljava/lang/String;)V

    .line 24
    nop

    .line 25
    iget-object v1, v0, Lcom/google/android/gms/internal/gtm/zzcc;->zzaau:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 26
    :goto_1
    if-eqz v1, :cond_2

    .line 27
    nop

    .line 28
    iget-object v1, v0, Lcom/google/android/gms/internal/gtm/zzcc;->zzaau:Ljava/lang/String;

    .line 29
    nop

    .line 30
    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzda;->zzaau:Ljava/lang/String;

    .line 31
    const-string v4, "XML config - app name"

    invoke-virtual {p0, v4, v1}, Lcom/google/android/gms/internal/gtm/zzam;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    :cond_2
    nop

    .line 33
    iget-object v1, v0, Lcom/google/android/gms/internal/gtm/zzcc;->zzaav:Ljava/lang/String;

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 34
    :goto_2
    if-eqz v1, :cond_4

    .line 35
    nop

    .line 36
    iget-object v1, v0, Lcom/google/android/gms/internal/gtm/zzcc;->zzaav:Ljava/lang/String;

    .line 37
    nop

    .line 38
    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzda;->zzaav:Ljava/lang/String;

    .line 39
    const-string v4, "XML config - app version"

    invoke-virtual {p0, v4, v1}, Lcom/google/android/gms/internal/gtm/zzam;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    :cond_4
    nop

    .line 41
    iget-object v1, v0, Lcom/google/android/gms/internal/gtm/zzcc;->zzaaw:Ljava/lang/String;

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v2

    .line 42
    :goto_3
    const/4 v4, -0x1

    if-eqz v1, :cond_a

    .line 43
    nop

    .line 44
    iget-object v1, v0, Lcom/google/android/gms/internal/gtm/zzcc;->zzaaw:Ljava/lang/String;

    .line 45
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 46
    const-string/jumbo v5, "verbose"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 47
    move v1, v2

    goto :goto_4

    .line 48
    :cond_6
    const-string v5, "info"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 49
    move v1, v3

    goto :goto_4

    .line 50
    :cond_7
    const-string/jumbo v5, "warning"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 51
    const/4 v1, 0x2

    goto :goto_4

    .line 52
    :cond_8
    const-string v5, "error"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 53
    const/4 v1, 0x3

    goto :goto_4

    .line 54
    :cond_9
    move v1, v4

    .line 55
    :goto_4
    nop

    .line 56
    if-ltz v1, :cond_a

    .line 57
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzda;->zzacu:I

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "XML config - log level"

    invoke-virtual {p0, v5, v1}, Lcom/google/android/gms/internal/gtm/zzam;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    :cond_a
    nop

    .line 60
    iget v1, v0, Lcom/google/android/gms/internal/gtm/zzcc;->zzaax:I

    if-ltz v1, :cond_b

    move v1, v3

    goto :goto_5

    :cond_b
    move v1, v2

    .line 61
    :goto_5
    if-eqz v1, :cond_c

    .line 62
    nop

    .line 63
    iget v1, v0, Lcom/google/android/gms/internal/gtm/zzcc;->zzaax:I

    .line 64
    nop

    .line 65
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzda;->zzaax:I

    .line 66
    iput-boolean v3, p0, Lcom/google/android/gms/internal/gtm/zzda;->zzacv:Z

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "XML config - dispatch period (sec)"

    invoke-virtual {p0, v5, v1}, Lcom/google/android/gms/internal/gtm/zzam;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    :cond_c
    nop

    .line 69
    iget v1, v0, Lcom/google/android/gms/internal/gtm/zzcc;->zzaay:I

    if-eq v1, v4, :cond_e

    .line 70
    nop

    .line 71
    iget v0, v0, Lcom/google/android/gms/internal/gtm/zzcc;->zzaay:I

    if-ne v0, v3, :cond_d

    move v2, v3

    .line 72
    :cond_d
    nop

    .line 73
    iput-boolean v2, p0, Lcom/google/android/gms/internal/gtm/zzda;->zzacx:Z

    .line 74
    iput-boolean v3, p0, Lcom/google/android/gms/internal/gtm/zzda;->zzacw:Z

    .line 75
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "XML config - dry run"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzam;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    :cond_e
    return-void
.end method

.method public final zzaz()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzda;->zzaau:Ljava/lang/String;

    return-object v0
.end method

.method public final zzba()Ljava/lang/String;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzda;->zzaav:Ljava/lang/String;

    return-object v0
.end method

.method public final zzgh()Z
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public final zzgi()Z
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 84
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzda;->zzacw:Z

    return v0
.end method

.method public final zzgj()Z
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzan;->zzdb()V

    .line 86
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzda;->zzacx:Z

    return v0
.end method
