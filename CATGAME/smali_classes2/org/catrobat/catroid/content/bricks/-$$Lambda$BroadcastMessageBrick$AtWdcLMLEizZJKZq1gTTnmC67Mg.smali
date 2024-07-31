.class public final synthetic Lorg/catrobat/catroid/content/bricks/-$$Lambda$BroadcastMessageBrick$AtWdcLMLEizZJKZq1gTTnmC67Mg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;

.field public final synthetic f$1:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$BroadcastMessageBrick$AtWdcLMLEizZJKZq1gTTnmC67Mg;->f$0:Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;

    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$BroadcastMessageBrick$AtWdcLMLEizZJKZq1gTTnmC67Mg;->f$1:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method


# virtual methods
.method public final onPositiveButtonClick(Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$BroadcastMessageBrick$AtWdcLMLEizZJKZq1gTTnmC67Mg;->f$0:Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$BroadcastMessageBrick$AtWdcLMLEizZJKZq1gTTnmC67Mg;->f$1:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, v1, p1, p2}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->lambda$getOkButtonListener$0$BroadcastMessageBrick(Landroidx/appcompat/app/AppCompatActivity;Landroid/content/DialogInterface;Ljava/lang/String;)V

    return-void
.end method
