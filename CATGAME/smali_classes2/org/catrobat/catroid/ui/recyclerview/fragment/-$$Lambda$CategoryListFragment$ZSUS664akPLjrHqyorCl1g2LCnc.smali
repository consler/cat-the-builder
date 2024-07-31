.class public final synthetic Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$CategoryListFragment$ZSUS664akPLjrHqyorCl1g2LCnc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/ui/dialogs/LegoSensorPortConfigDialog$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$CategoryListFragment$ZSUS664akPLjrHqyorCl1g2LCnc;->f$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;

    iput p2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$CategoryListFragment$ZSUS664akPLjrHqyorCl1g2LCnc;->f$1:I

    return-void
.end method


# virtual methods
.method public final onPositiveButtonClick(Landroid/content/DialogInterface;ILjava/lang/Enum;)V
    .locals 2

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$CategoryListFragment$ZSUS664akPLjrHqyorCl1g2LCnc;->f$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;

    iget v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$CategoryListFragment$ZSUS664akPLjrHqyorCl1g2LCnc;->f$1:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;->lambda$showLegoSensorPortConfigDialog$0$CategoryListFragment(ILandroid/content/DialogInterface;ILjava/lang/Enum;)V

    return-void
.end method
