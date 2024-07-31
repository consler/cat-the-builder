.class public final Lcom/google/android/gms/internal/gtm/zzdb;
.super Ljava/lang/Object;


# static fields
.field private static final zzacz:Ljava/lang/reflect/Method;

.field private static final zzada:Ljava/lang/reflect/Method;

.field private static volatile zzadb:Lcom/google/android/gms/internal/gtm/zzdd;


# instance fields
.field private final zzacy:Landroid/app/job/JobScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzdb;->zzgk()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzdb;->zzacz:Ljava/lang/reflect/Method;

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzdb;->zzgl()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzdb;->zzada:Ljava/lang/reflect/Method;

    .line 38
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzdc;->zzadc:Lcom/google/android/gms/internal/gtm/zzdd;

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzdb;->zzadb:Lcom/google/android/gms/internal/gtm/zzdd;

    return-void
.end method

.method private constructor <init>(Landroid/app/job/JobScheduler;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzdb;->zzacy:Landroid/app/job/JobScheduler;

    .line 21
    return-void
.end method

.method private final zza(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I
    .locals 4

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzdb;->zzacz:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzdb;->zzacy:Landroid/app/job/JobScheduler;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 p2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, p2

    const/4 p2, 0x3

    aput-object p4, v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 24
    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    .line 25
    :goto_0
    const-string p3, "error calling scheduleAsPackage"

    invoke-static {p4, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzdb;->zzacy:Landroid/app/job/JobScheduler;

    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p1

    return p1
.end method

.method public static zza(Landroid/content/Context;Landroid/app/job/JobInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 27
    nop

    .line 28
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 29
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzdb;->zzacz:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzdb;->zzadb:Lcom/google/android/gms/internal/gtm/zzdd;

    .line 30
    invoke-interface {v1}, Lcom/google/android/gms/internal/gtm/zzdd;->zzgo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzdb;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzdb;-><init>(Landroid/app/job/JobScheduler;)V

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzdb;->zzgm()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/gtm/zzdb;->zza(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0

    .line 32
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    return p0
.end method

.method private static zzgk()Ljava/lang/reflect/Method;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    :try_start_0
    const-class v0, Landroid/app/job/JobScheduler;

    const-string v1, "scheduleAsPackage"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/job/JobInfo;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    move-exception v0

    .line 4
    const/4 v0, 0x6

    const-string v1, "JobSchedulerCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    const-string v0, "No scheduleAsPackage method available, falling back to schedule"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static zzgl()Ljava/lang/reflect/Method;
    .locals 3

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 8
    :try_start_0
    const-class v0, Landroid/os/UserHandle;

    const-string v2, "myUserId"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const/4 v0, 0x6

    const-string v2, "JobSchedulerCompat"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    const-string v0, "No myUserId method available"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    return-object v1
.end method

.method private static zzgm()I
    .locals 4

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzdb;->zzada:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 14
    const/4 v2, 0x0

    :try_start_0
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 15
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 16
    :goto_0
    const/4 v2, 0x6

    const-string v3, "JobSchedulerCompat"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    const-string v2, "myUserId invocation illegal"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    :cond_0
    return v1
.end method

.method static final synthetic zzgn()Z
    .locals 1

    .line 35
    const/4 v0, 0x0

    return v0
.end method
