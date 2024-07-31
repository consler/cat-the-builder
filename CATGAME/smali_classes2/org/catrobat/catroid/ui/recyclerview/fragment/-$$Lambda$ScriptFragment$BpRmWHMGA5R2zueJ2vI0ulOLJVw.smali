.class public final synthetic Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$BpRmWHMGA5R2zueJ2vI0ulOLJVw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$BpRmWHMGA5R2zueJ2vI0ulOLJVw;->f$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$BpRmWHMGA5R2zueJ2vI0ulOLJVw;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onPositiveButtonClick(Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$BpRmWHMGA5R2zueJ2vI0ulOLJVw;->f$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$BpRmWHMGA5R2zueJ2vI0ulOLJVw;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->lambda$showNewScriptGroupAlert$5$ScriptFragment(Ljava/util/List;Landroid/content/DialogInterface;Ljava/lang/String;)V

    return-void
.end method
