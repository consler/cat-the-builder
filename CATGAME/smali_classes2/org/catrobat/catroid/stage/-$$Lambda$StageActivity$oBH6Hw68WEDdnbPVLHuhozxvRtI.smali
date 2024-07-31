.class public final synthetic Lorg/catrobat/catroid/stage/-$$Lambda$StageActivity$oBH6Hw68WEDdnbPVLHuhozxvRtI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/stage/StageActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/stage/StageActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/stage/-$$Lambda$StageActivity$oBH6Hw68WEDdnbPVLHuhozxvRtI;->f$0:Lorg/catrobat/catroid/stage/StageActivity;

    return-void
.end method


# virtual methods
.method public final screenshotSaved(Z)V
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/stage/-$$Lambda$StageActivity$oBH6Hw68WEDdnbPVLHuhozxvRtI;->f$0:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/stage/StageActivity;->lambda$onBackPressed$1$StageActivity(Z)V

    return-void
.end method
