.class final enum Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;
.super Ljava/lang/Enum;
.source "SequentialExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/utils/executor/SequentialExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WorkerRunningState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

.field public static final enum IDLE:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

.field public static final enum QUEUED:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

.field public static final enum QUEUING:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

.field public static final enum RUNNING:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 158
    new-instance v0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;->IDLE:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    .line 160
    new-instance v1, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    const-string v3, "QUEUING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;->QUEUING:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    .line 162
    new-instance v3, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    const-string v5, "QUEUED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;->QUEUED:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    .line 164
    new-instance v5, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    const-string v7, "RUNNING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;->RUNNING:Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    const/4 v7, 0x4

    new-array v7, v7, [Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 156
    sput-object v7, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;->$VALUES:[Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;
    .locals 1

    .line 156
    const-class v0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;
    .locals 1

    .line 156
    sget-object v0, Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;->$VALUES:[Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    invoke-virtual {v0}, [Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/impl/utils/executor/SequentialExecutor$WorkerRunningState;

    return-object v0
.end method
