.class public final synthetic Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$_ownblMHSUJsaZ36sgN18xAh_RA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/ui/SpriteActivity;

.field public final synthetic f$1:Landroid/widget/RadioButton;

.field public final synthetic f$2:Landroid/widget/RadioButton;

.field public final synthetic f$3:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/ui/SpriteActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$_ownblMHSUJsaZ36sgN18xAh_RA;->f$0:Lorg/catrobat/catroid/ui/SpriteActivity;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$_ownblMHSUJsaZ36sgN18xAh_RA;->f$1:Landroid/widget/RadioButton;

    iput-object p3, p0, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$_ownblMHSUJsaZ36sgN18xAh_RA;->f$2:Landroid/widget/RadioButton;

    iput-object p4, p0, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$_ownblMHSUJsaZ36sgN18xAh_RA;->f$3:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onPositiveButtonClick(Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$_ownblMHSUJsaZ36sgN18xAh_RA;->f$0:Lorg/catrobat/catroid/ui/SpriteActivity;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$_ownblMHSUJsaZ36sgN18xAh_RA;->f$1:Landroid/widget/RadioButton;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$_ownblMHSUJsaZ36sgN18xAh_RA;->f$2:Landroid/widget/RadioButton;

    iget-object v3, p0, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$_ownblMHSUJsaZ36sgN18xAh_RA;->f$3:Landroid/widget/CheckBox;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/catrobat/catroid/ui/SpriteActivity;->lambda$handleAddUserDataButton$19$SpriteActivity(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/CheckBox;Landroid/content/DialogInterface;Ljava/lang/String;)V

    return-void
.end method
