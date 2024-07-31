.class final Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment$setupToggleButtonListener$2;
.super Ljava/lang/Object;
.source "NewSpriteDialogFragment.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment;->setupToggleButtonListener()V
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/widget/CompoundButton;",
        "isChecked",
        "",
        "onCheckedChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment$setupToggleButtonListener$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "$noName_0"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 195
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment$setupToggleButtonListener$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment;

    invoke-static {v0, p2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment;->access$visualTextViewVisibility(Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment;Z)V

    .line 196
    nop

    .line 199
    nop

    .line 196
    nop

    .line 198
    nop

    .line 196
    nop

    .line 197
    nop

    .line 196
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment$setupToggleButtonListener$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment$setupToggleButtonListener$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment;->access$isPlaceVisually$p(Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment;)Z

    move-result v1

    const-string v2, "newSpriteVisualPlacement"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 200
    return-void
.end method
