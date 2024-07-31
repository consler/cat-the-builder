.class public Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BrickSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrickSpinnerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lorg/catrobat/catroid/common/Nameable;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/Nameable;",
            ">;"
        }
    .end annotation
.end field

.field private resource:I

.field final synthetic this$0:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/Nameable;",
            ">;)V"
        }
    .end annotation

    .line 215
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>.BrickSpinnerAdapter;"
    .local p4, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/Nameable;>;"
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->this$0:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 216
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 217
    iput p3, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->resource:I

    .line 218
    iput-object p4, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->items:Ljava/util/List;

    .line 219
    return-void
.end method


# virtual methods
.method containsEditOption()Z
    .locals 3

    .line 283
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>.BrickSpinnerAdapter;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/common/Nameable;

    .line 284
    .local v1, "item":Lorg/catrobat/catroid/common/Nameable;
    instance-of v2, v1, Lorg/catrobat/catroid/content/bricks/brickspinner/EditOption;

    if-eqz v2, :cond_0

    .line 285
    const/4 v0, 0x1

    return v0

    .line 287
    .end local v1    # "item":Lorg/catrobat/catroid/common/Nameable;
    :cond_0
    goto :goto_0

    .line 288
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method containsNewOption()Z
    .locals 3

    .line 274
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>.BrickSpinnerAdapter;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/common/Nameable;

    .line 275
    .local v1, "item":Lorg/catrobat/catroid/common/Nameable;
    instance-of v2, v1, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;

    if-eqz v2, :cond_0

    .line 276
    const/4 v0, 0x1

    return v0

    .line 278
    .end local v1    # "item":Lorg/catrobat/catroid/common/Nameable;
    :cond_0
    goto :goto_0

    .line 279
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 223
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>.BrickSpinnerAdapter;"
    if-nez p2, :cond_0

    .line 224
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090009

    const/4 v2, 0x0

    .line 225
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 228
    :cond_0
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/common/Nameable;

    .line 229
    .local v0, "item":Lorg/catrobat/catroid/common/Nameable;
    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {v0}, Lorg/catrobat/catroid/common/Nameable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter$1;

    invoke-direct {v1, p0, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter$1;-><init>(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;Lorg/catrobat/catroid/common/Nameable;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 243
    return-object p2
.end method

.method getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/Nameable;",
            ">;"
        }
    .end annotation

    .line 270
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>.BrickSpinnerAdapter;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->items:Ljava/util/List;

    return-object v0
.end method

.method getPosition(Ljava/lang/String;)I
    .locals 2
    .param p1, "itemName"    # Ljava/lang/String;

    .line 260
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>.BrickSpinnerAdapter;"
    const/4 v0, 0x0

    .local v0, "position":I
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 261
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/common/Nameable;

    invoke-interface {v1}, Lorg/catrobat/catroid/common/Nameable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    return v0

    .line 260
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    .end local v0    # "position":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 249
    .local p0, "this":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<TT;>.BrickSpinnerAdapter;"
    if-nez p2, :cond_0

    .line 250
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->resource:I

    const/4 v2, 0x0

    .line 251
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 254
    :cond_0
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$BrickSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/common/Nameable;

    .line 255
    .local v0, "item":Lorg/catrobat/catroid/common/Nameable;
    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {v0}, Lorg/catrobat/catroid/common/Nameable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    return-object p2
.end method
