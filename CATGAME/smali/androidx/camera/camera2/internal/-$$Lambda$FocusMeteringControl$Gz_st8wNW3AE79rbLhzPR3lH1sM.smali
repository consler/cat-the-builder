.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$Gz_st8wNW3AE79rbLhzPR3lH1sM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/FocusMeteringControl;

.field public final synthetic f$1:Landroidx/camera/core/FocusMeteringAction;

.field public final synthetic f$2:Landroid/util/Rational;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/FocusMeteringControl;Landroidx/camera/core/FocusMeteringAction;Landroid/util/Rational;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$Gz_st8wNW3AE79rbLhzPR3lH1sM;->f$0:Landroidx/camera/camera2/internal/FocusMeteringControl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$Gz_st8wNW3AE79rbLhzPR3lH1sM;->f$1:Landroidx/camera/core/FocusMeteringAction;

    iput-object p3, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$Gz_st8wNW3AE79rbLhzPR3lH1sM;->f$2:Landroid/util/Rational;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$Gz_st8wNW3AE79rbLhzPR3lH1sM;->f$0:Landroidx/camera/camera2/internal/FocusMeteringControl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$Gz_st8wNW3AE79rbLhzPR3lH1sM;->f$1:Landroidx/camera/core/FocusMeteringAction;

    iget-object v2, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$Gz_st8wNW3AE79rbLhzPR3lH1sM;->f$2:Landroid/util/Rational;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->lambda$startFocusAndMetering$2$FocusMeteringControl(Landroidx/camera/core/FocusMeteringAction;Landroid/util/Rational;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
