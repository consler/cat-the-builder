.class public final Lorg/catrobat/paintroid/ui/tools/FontListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FontListAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/ui/tools/FontListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0004H\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/tools/FontListAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View$OnClickListener;",
        "itemView",
        "Landroid/view/View;",
        "(Lorg/catrobat/paintroid/ui/tools/FontListAdapter;Landroid/view/View;)V",
        "fontChip",
        "Lcom/google/android/material/chip/Chip;",
        "getFontChip",
        "()Lcom/google/android/material/chip/Chip;",
        "setFontChip",
        "(Lcom/google/android/material/chip/Chip;)V",
        "onClick",
        "",
        "p0",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private fontChip:Lcom/google/android/material/chip/Chip;

.field final synthetic this$0:Lorg/catrobat/paintroid/ui/tools/FontListAdapter;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/ui/tools/FontListAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lorg/catrobat/paintroid/ui/tools/FontListAdapter;
    .param p2, "itemView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/FontListAdapter$ViewHolder;->this$0:Lorg/catrobat/paintroid/ui/tools/FontListAdapter;

    .line 76
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 78
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_font_type:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.pocketpaint_font_type)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/chip/Chip;

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/tools/FontListAdapter$ViewHolder;->fontChip:Lcom/google/android/material/chip/Chip;

    .line 80
    nop

    .line 81
    move-object v1, p0

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method


# virtual methods
.method public final getFontChip()Lcom/google/android/material/chip/Chip;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/FontListAdapter$ViewHolder;->fontChip:Lcom/google/android/material/chip/Chip;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "p0"    # Landroid/view/View;

    .line 85
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/FontListAdapter$ViewHolder;->this$0:Lorg/catrobat/paintroid/ui/tools/FontListAdapter;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/FontListAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/ui/tools/FontListAdapter;->setSelectedIndex(I)V

    .line 86
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/FontListAdapter$ViewHolder;->this$0:Lorg/catrobat/paintroid/ui/tools/FontListAdapter;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/tools/FontListAdapter;->access$getOnFontChanged$p(Lorg/catrobat/paintroid/ui/tools/FontListAdapter;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/paintroid/ui/tools/FontListAdapter$ViewHolder;->this$0:Lorg/catrobat/paintroid/ui/tools/FontListAdapter;

    invoke-static {v1}, Lorg/catrobat/paintroid/ui/tools/FontListAdapter;->access$getFontTypes$p(Lorg/catrobat/paintroid/ui/tools/FontListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/FontListAdapter$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public final setFontChip(Lcom/google/android/material/chip/Chip;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/google/android/material/chip/Chip;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/FontListAdapter$ViewHolder;->fontChip:Lcom/google/android/material/chip/Chip;

    return-void
.end method
