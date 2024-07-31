.class final Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSpriteButton$1;
.super Ljava/lang/Object;
.source "ProjectActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/ProjectActivity;->handleAddSpriteButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $alertDialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/ProjectActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/ProjectActivity;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSpriteButton$1;->this$0:Lorg/catrobat/catroid/ui/ProjectActivity;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSpriteButton$1;->$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "it"    # Landroid/view/View;

    .line 392
    nop

    .line 393
    nop

    .line 392
    new-instance v0, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSpriteButton$1;->this$0:Lorg/catrobat/catroid/ui/ProjectActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;-><init>(Landroid/app/Activity;)V

    .line 393
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;->startActivityForResult(I)V

    .line 394
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSpriteButton$1;->$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 395
    return-void
.end method
