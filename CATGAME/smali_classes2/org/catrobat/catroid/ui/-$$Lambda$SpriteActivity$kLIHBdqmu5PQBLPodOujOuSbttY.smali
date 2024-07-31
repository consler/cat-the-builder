.class public final synthetic Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$kLIHBdqmu5PQBLPodOujOuSbttY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/ui/SpriteActivity;

.field public final synthetic f$1:Landroid/widget/RadioButton;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/ui/SpriteActivity;Landroid/widget/RadioButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$kLIHBdqmu5PQBLPodOujOuSbttY;->f$0:Lorg/catrobat/catroid/ui/SpriteActivity;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$kLIHBdqmu5PQBLPodOujOuSbttY;->f$1:Landroid/widget/RadioButton;

    return-void
.end method


# virtual methods
.method public final onPositiveButtonClick(Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$kLIHBdqmu5PQBLPodOujOuSbttY;->f$0:Lorg/catrobat/catroid/ui/SpriteActivity;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$kLIHBdqmu5PQBLPodOujOuSbttY;->f$1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1, p1, p2}, Lorg/catrobat/catroid/ui/SpriteActivity;->lambda$handleAddUserListButton$21$SpriteActivity(Landroid/widget/RadioButton;Landroid/content/DialogInterface;Ljava/lang/String;)V

    return-void
.end method
