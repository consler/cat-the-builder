.class public final synthetic Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$CategoryListFragment$pVAn1B0Ltvr4hiYs6chwkgzjBzA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lorg/catrobat/catroid/content/Sprite;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;Ljava/util/List;Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$CategoryListFragment$pVAn1B0Ltvr4hiYs6chwkgzjBzA;->f$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$CategoryListFragment$pVAn1B0Ltvr4hiYs6chwkgzjBzA;->f$1:Ljava/util/List;

    iput-object p3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$CategoryListFragment$pVAn1B0Ltvr4hiYs6chwkgzjBzA;->f$2:Lorg/catrobat/catroid/content/Sprite;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$CategoryListFragment$pVAn1B0Ltvr4hiYs6chwkgzjBzA;->f$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$CategoryListFragment$pVAn1B0Ltvr4hiYs6chwkgzjBzA;->f$1:Ljava/util/List;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$CategoryListFragment$pVAn1B0Ltvr4hiYs6chwkgzjBzA;->f$2:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CategoryListFragment;->lambda$showSelectSpriteDialog$1$CategoryListFragment(Ljava/util/List;Lorg/catrobat/catroid/content/Sprite;Landroid/content/DialogInterface;I)V

    return-void
.end method
