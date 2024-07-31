.class final Lorg/catrobat/catroid/ui/fragment/ProjectDetailsFragment$onViewCreated$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "ProjectDetailsFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/fragment/ProjectDetailsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick",
        "org/catrobat/catroid/ui/fragment/ProjectDetailsFragment$onViewCreated$1$1$1",
        "org/catrobat/catroid/ui/fragment/ProjectDetailsFragment$$special$$inlined$apply$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $header$inlined:Lorg/catrobat/catroid/content/XmlHeader;

.field final synthetic $modeText$inlined:I

.field final synthetic $screen$inlined:Ljava/lang/String;

.field final synthetic $size$inlined:Ljava/lang/String;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/fragment/ProjectDetailsFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/fragment/ProjectDetailsFragment;Ljava/lang/String;Ljava/lang/String;ILorg/catrobat/catroid/content/XmlHeader;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/ProjectDetailsFragment$onViewCreated$$inlined$apply$lambda$1;->this$0:Lorg/catrobat/catroid/ui/fragment/ProjectDetailsFragment;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/fragment/ProjectDetailsFragment$onViewCreated$$inlined$apply$lambda$1;->$size$inlined:Ljava/lang/String;

    iput-object p3, p0, Lorg/catrobat/catroid/ui/fragment/ProjectDetailsFragment$onViewCreated$$inlined$apply$lambda$1;->$screen$inlined:Ljava/lang/String;

    iput p4, p0, Lorg/catrobat/catroid/ui/fragment/ProjectDetailsFragment$onViewCreated$$inlined$apply$lambda$1;->$modeText$inlined:I

    iput-object p5, p0, Lorg/catrobat/catroid/ui/fragment/ProjectDetailsFragment$onViewCreated$$inlined$apply$lambda$1;->$header$inlined:Lorg/catrobat/catroid/content/XmlHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "it"    # Landroid/view/View;

    .line 130
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/ProjectDetailsFragment$onViewCreated$$inlined$apply$lambda$1;->this$0:Lorg/catrobat/catroid/ui/fragment/ProjectDetailsFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/ProjectDetailsFragment;->access$handleDescriptionPressed(Lorg/catrobat/catroid/ui/fragment/ProjectDetailsFragment;)V

    .line 131
    return-void
.end method
