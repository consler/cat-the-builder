.class public final synthetic Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$IFB6lpczAYE4uL-ljYm51TsMEQI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/ui/SpriteActivity;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/ui/SpriteActivity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$IFB6lpczAYE4uL-ljYm51TsMEQI;->f$0:Lorg/catrobat/catroid/ui/SpriteActivity;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$IFB6lpczAYE4uL-ljYm51TsMEQI;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$IFB6lpczAYE4uL-ljYm51TsMEQI;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPositiveButtonClick(Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$IFB6lpczAYE4uL-ljYm51TsMEQI;->f$0:Lorg/catrobat/catroid/ui/SpriteActivity;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$IFB6lpczAYE4uL-ljYm51TsMEQI;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$IFB6lpczAYE4uL-ljYm51TsMEQI;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/catrobat/catroid/ui/SpriteActivity;->lambda$addSpriteFromUri$0$SpriteActivity(Landroid/net/Uri;Ljava/lang/String;Landroid/content/DialogInterface;Ljava/lang/String;)V

    return-void
.end method
