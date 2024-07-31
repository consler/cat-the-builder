.class Lorg/catrobat/catroid/ui/ScratchConverterActivity$1;
.super Ljava/lang/Object;
.source "ScratchConverterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/ScratchConverterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/ScratchConverterActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/ScratchConverterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/ScratchConverterActivity;

    .line 129
    iput-object p1, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity$1;->this$0:Lorg/catrobat/catroid/ui/ScratchConverterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 133
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity$1;->this$0:Lorg/catrobat/catroid/ui/ScratchConverterActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->access$000(Lorg/catrobat/catroid/ui/ScratchConverterActivity;)Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity$1;->this$0:Lorg/catrobat/catroid/ui/ScratchConverterActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->access$100(Lorg/catrobat/catroid/ui/ScratchConverterActivity;I)V

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity$1;->this$0:Lorg/catrobat/catroid/ui/ScratchConverterActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->access$200(Lorg/catrobat/catroid/ui/ScratchConverterActivity;)Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity$1;->this$0:Lorg/catrobat/catroid/ui/ScratchConverterActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->access$100(Lorg/catrobat/catroid/ui/ScratchConverterActivity;I)V

    .line 139
    :cond_1
    return-void
.end method
