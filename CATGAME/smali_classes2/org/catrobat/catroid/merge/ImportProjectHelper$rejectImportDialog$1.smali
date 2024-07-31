.class final Lorg/catrobat/catroid/merge/ImportProjectHelper$rejectImportDialog$1;
.super Ljava/lang/Object;
.source "ImportProjectHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/merge/ImportProjectHelper;->rejectImportDialog(Ljava/util/ArrayList;)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $conflicts:Ljava/util/ArrayList;

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lorg/catrobat/catroid/merge/ImportProjectHelper;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/merge/ImportProjectHelper;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/merge/ImportProjectHelper$rejectImportDialog$1;->this$0:Lorg/catrobat/catroid/merge/ImportProjectHelper;

    iput-object p2, p0, Lorg/catrobat/catroid/merge/ImportProjectHelper$rejectImportDialog$1;->$view:Landroid/view/View;

    iput-object p3, p0, Lorg/catrobat/catroid/merge/ImportProjectHelper$rejectImportDialog$1;->$conflicts:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 205
    nop

    .line 212
    nop

    .line 205
    nop

    .line 211
    nop

    .line 205
    nop

    .line 208
    nop

    .line 205
    nop

    .line 207
    nop

    .line 205
    nop

    .line 206
    nop

    .line 205
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/catrobat/catroid/merge/ImportProjectHelper$rejectImportDialog$1;->this$0:Lorg/catrobat/catroid/merge/ImportProjectHelper;

    invoke-static {v1}, Lorg/catrobat/catroid/merge/ImportProjectHelper;->access$getContext$p(Lorg/catrobat/catroid/merge/ImportProjectHelper;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 206
    const v1, 0x7f1207d1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lorg/catrobat/catroid/merge/ImportProjectHelper$rejectImportDialog$1;->$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lorg/catrobat/catroid/merge/ImportProjectHelper$rejectImportDialog$1;->this$0:Lorg/catrobat/catroid/merge/ImportProjectHelper;

    invoke-static {v1}, Lorg/catrobat/catroid/merge/ImportProjectHelper;->access$getContext$p(Lorg/catrobat/catroid/merge/ImportProjectHelper;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1205ff

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    sget-object v2, Lorg/catrobat/catroid/merge/ImportProjectHelper$rejectImportDialog$1$alertDialog$1;->INSTANCE:Lorg/catrobat/catroid/merge/ImportProjectHelper$rejectImportDialog$1$alertDialog$1;

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 211
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const-string v2, "AlertDialog.Builder(cont\u2026                .create()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    nop

    .line 214
    .local v0, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 216
    const v2, 0x7f0a031d

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 217
    .local v2, "conflictField":Landroid/widget/TextView;
    iget-object v3, p0, Lorg/catrobat/catroid/merge/ImportProjectHelper$rejectImportDialog$1;->$conflicts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 218
    .local v3, "numberOfIterations":I
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 220
    .local v4, "content":Landroid/text/SpannableStringBuilder;
    iget-object v5, p0, Lorg/catrobat/catroid/merge/ImportProjectHelper$rejectImportDialog$1;->$conflicts:Ljava/util/ArrayList;

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->withIndex(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/collections/IndexedValue;

    .line 221
    .local v6, "iterator":Lkotlin/collections/IndexedValue;
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 223
    .local v7, "contentStart":I
    invoke-virtual {v6}, Lkotlin/collections/IndexedValue;->getIndex()I

    move-result v8

    add-int/lit8 v9, v3, -0x1

    if-ge v8, v9, :cond_0

    .line 224
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lkotlin/collections/IndexedValue;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 226
    :cond_0
    invoke-virtual {v6}, Lkotlin/collections/IndexedValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 227
    :goto_1
    nop

    .line 229
    nop

    .line 230
    new-instance v8, Landroid/text/style/BulletSpan;

    const/16 v9, 0xf

    invoke-direct {v8, v9}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    .line 229
    invoke-virtual {v4, v8, v7, v9, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 220
    .end local v6    # "iterator":Lkotlin/collections/IndexedValue;
    .end local v7    # "contentStart":I
    goto :goto_0

    .line 233
    :cond_1
    if-eqz v2, :cond_2

    move-object v1, v4

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    .end local v0    # "alertDialog":Landroidx/appcompat/app/AlertDialog;
    .end local v2    # "conflictField":Landroid/widget/TextView;
    .end local v3    # "numberOfIterations":I
    .end local v4    # "content":Landroid/text/SpannableStringBuilder;
    :cond_2
    return-void
.end method
