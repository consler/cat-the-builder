.class public final synthetic Lorg/catrobat/catroid/ui/-$$Lambda$MainMenuActivity$z0bl7Pf3DESyy351jWkQq_W1W38;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/ui/MainMenuActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/ui/MainMenuActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/-$$Lambda$MainMenuActivity$z0bl7Pf3DESyy351jWkQq_W1W38;->f$0:Lorg/catrobat/catroid/ui/MainMenuActivity;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/-$$Lambda$MainMenuActivity$z0bl7Pf3DESyy351jWkQq_W1W38;->f$0:Lorg/catrobat/catroid/ui/MainMenuActivity;

    invoke-virtual {v0, p1, p2, p3}, Lorg/catrobat/catroid/ui/MainMenuActivity;->lambda$showTermsOfUseDialog$2$MainMenuActivity(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
