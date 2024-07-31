.class public final synthetic Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$O66uCW9UqYmql6qNqsCTeCS4YYY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lorg/catrobat/catroid/content/bricks/Brick;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;Ljava/util/List;Lorg/catrobat/catroid/content/bricks/Brick;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$O66uCW9UqYmql6qNqsCTeCS4YYY;->f$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$O66uCW9UqYmql6qNqsCTeCS4YYY;->f$1:Ljava/util/List;

    iput-object p3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$O66uCW9UqYmql6qNqsCTeCS4YYY;->f$2:Lorg/catrobat/catroid/content/bricks/Brick;

    iput p4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$O66uCW9UqYmql6qNqsCTeCS4YYY;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$O66uCW9UqYmql6qNqsCTeCS4YYY;->f$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$O66uCW9UqYmql6qNqsCTeCS4YYY;->f$1:Ljava/util/List;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$O66uCW9UqYmql6qNqsCTeCS4YYY;->f$2:Lorg/catrobat/catroid/content/bricks/Brick;

    iget v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$O66uCW9UqYmql6qNqsCTeCS4YYY;->f$3:I

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->lambda$onItemClick$3$ScriptFragment(Ljava/util/List;Lorg/catrobat/catroid/content/bricks/Brick;ILandroid/content/DialogInterface;I)V

    return-void
.end method
