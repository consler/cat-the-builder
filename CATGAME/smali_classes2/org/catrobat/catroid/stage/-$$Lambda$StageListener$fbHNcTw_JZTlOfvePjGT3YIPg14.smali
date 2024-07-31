.class public final synthetic Lorg/catrobat/catroid/stage/-$$Lambda$StageListener$fbHNcTw_JZTlOfvePjGT3YIPg14;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/stage/StageListener;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/stage/StageListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/stage/-$$Lambda$StageListener$fbHNcTw_JZTlOfvePjGT3YIPg14;->f$0:Lorg/catrobat/catroid/stage/StageListener;

    return-void
.end method


# virtual methods
.method public final screenshotSaved(Z)V
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/stage/-$$Lambda$StageListener$fbHNcTw_JZTlOfvePjGT3YIPg14;->f$0:Lorg/catrobat/catroid/stage/StageListener;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/catrobat/catroid/stage/StageListener;->lambda$fbHNcTw_JZTlOfvePjGT3YIPg14(Lorg/catrobat/catroid/stage/StageListener;Ljava/lang/Boolean;)V

    return-void
.end method
