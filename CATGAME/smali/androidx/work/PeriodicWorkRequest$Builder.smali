.class public final Landroidx/work/PeriodicWorkRequest$Builder;
.super Landroidx/work/WorkRequest$Builder;
.source "PeriodicWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/PeriodicWorkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/WorkRequest$Builder<",
        "Landroidx/work/PeriodicWorkRequest$Builder;",
        "Landroidx/work/PeriodicWorkRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p2, "repeatInterval"    # J
    .param p4, "repeatIntervalTimeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "workerClass",
            "repeatInterval",
            "repeatIntervalTimeUnit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 96
    .local p1, "workerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/work/ListenableWorker;>;"
    invoke-direct {p0, p1}, Landroidx/work/WorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 97
    iget-object v0, p0, Landroidx/work/PeriodicWorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/model/WorkSpec;->setPeriodic(J)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p2, "repeatInterval"    # J
    .param p4, "repeatIntervalTimeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "flexInterval"    # J
    .param p7, "flexIntervalTimeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "workerClass",
            "repeatInterval",
            "repeatIntervalTimeUnit",
            "flexInterval",
            "flexIntervalTimeUnit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 149
    .local p1, "workerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/work/ListenableWorker;>;"
    invoke-direct {p0, p1}, Landroidx/work/WorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 150
    iget-object v0, p0, Landroidx/work/PeriodicWorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 151
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 152
    invoke-virtual {p7, p5, p6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 150
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/work/impl/model/WorkSpec;->setPeriodic(JJ)V

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/time/Duration;)V
    .locals 3
    .param p2, "repeatInterval"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "workerClass",
            "repeatInterval"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;",
            "Ljava/time/Duration;",
            ")V"
        }
    .end annotation

    .line 117
    .local p1, "workerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/work/ListenableWorker;>;"
    invoke-direct {p0, p1}, Landroidx/work/WorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 118
    iget-object v0, p0, Landroidx/work/PeriodicWorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/model/WorkSpec;->setPeriodic(J)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/time/Duration;Ljava/time/Duration;)V
    .locals 5
    .param p2, "repeatInterval"    # Ljava/time/Duration;
    .param p3, "flexInterval"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "workerClass",
            "repeatInterval",
            "flexInterval"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;",
            "Ljava/time/Duration;",
            "Ljava/time/Duration;",
            ")V"
        }
    .end annotation

    .line 180
    .local p1, "workerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/work/ListenableWorker;>;"
    invoke-direct {p0, p1}, Landroidx/work/WorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 181
    iget-object v0, p0, Landroidx/work/PeriodicWorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-virtual {p3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/work/impl/model/WorkSpec;->setPeriodic(JJ)V

    .line 182
    return-void
.end method


# virtual methods
.method buildInternal()Landroidx/work/PeriodicWorkRequest;
    .locals 2

    .line 186
    iget-boolean v0, p0, Landroidx/work/PeriodicWorkRequest$Builder;->mBackoffCriteriaSet:Z

    const/16 v1, 0x17

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/work/PeriodicWorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 188
    invoke-virtual {v0}, Landroidx/work/Constraints;->requiresDeviceIdle()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set backoff criteria on an idle mode job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/PeriodicWorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-boolean v0, v0, Landroidx/work/impl/model/WorkSpec;->runInForeground:Z

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Landroidx/work/PeriodicWorkRequest$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 194
    invoke-virtual {v0}, Landroidx/work/Constraints;->requiresDeviceIdle()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 195
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot run in foreground with an idle mode constraint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_3
    :goto_1
    new-instance v0, Landroidx/work/PeriodicWorkRequest;

    invoke-direct {v0, p0}, Landroidx/work/PeriodicWorkRequest;-><init>(Landroidx/work/PeriodicWorkRequest$Builder;)V

    return-object v0
.end method

.method bridge synthetic buildInternal()Landroidx/work/WorkRequest;
    .locals 1

    .line 76
    invoke-virtual {p0}, Landroidx/work/PeriodicWorkRequest$Builder;->buildInternal()Landroidx/work/PeriodicWorkRequest;

    move-result-object v0

    return-object v0
.end method

.method getThis()Landroidx/work/PeriodicWorkRequest$Builder;
    .locals 0

    .line 203
    return-object p0
.end method

.method bridge synthetic getThis()Landroidx/work/WorkRequest$Builder;
    .locals 1

    .line 76
    invoke-virtual {p0}, Landroidx/work/PeriodicWorkRequest$Builder;->getThis()Landroidx/work/PeriodicWorkRequest$Builder;

    move-result-object v0

    return-object v0
.end method
