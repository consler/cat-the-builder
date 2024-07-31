.class public final Lorg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher;
.super Ljava/lang/Object;
.source "ProjectUploadActivity.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/ProjectUploadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NameInputTextWatcher"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProjectUploadActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProjectUploadActivity.kt\norg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,665:1\n99#2:666\n71#2,22:667\n*E\n*S KotlinDebug\n*F\n+ 1 ProjectUploadActivity.kt\norg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher\n*L\n641#1:666\n641#1,22:667\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J(\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J(\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher;",
        "Landroid/text/TextWatcher;",
        "(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)V",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "validateName",
        "",
        "name",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/ProjectUploadActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 635
    iput-object p1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher;->validateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, "error":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->access$getBinding$p(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)Lorg/catrobat/catroid/databinding/ActivityUploadBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/catrobat/catroid/databinding/ActivityUploadBinding;->inputProjectName:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v2, "binding.inputProjectName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->access$setNextButtonEnabled(Lorg/catrobat/catroid/ui/ProjectUploadActivity;Z)V

    .line 662
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method public final validateName(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    move-object v0, p1

    .line 638
    .local v0, "name":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 639
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    const v2, 0x7f1205a1

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 641
    :cond_1
    move-object v1, v0

    .local v1, "$this$trim$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 666
    .local v4, "$i$f$trim":I
    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    .local v5, "$this$trim$iv$iv":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 667
    .local v6, "$i$f$trim":I
    const/4 v7, 0x0

    .line 668
    .local v7, "startIndex$iv$iv":I
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int/2addr v8, v3

    .line 669
    .local v8, "endIndex$iv$iv":I
    const/4 v9, 0x0

    .line 671
    .local v9, "startFound$iv$iv":Z
    :goto_1
    if-gt v7, v8, :cond_7

    .line 672
    if-nez v9, :cond_2

    move v10, v7

    goto :goto_2

    :cond_2
    move v10, v8

    .line 673
    .local v10, "index$iv$iv":I
    :goto_2
    invoke-interface {v5, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    .local v11, "it":C
    const/4 v12, 0x0

    .line 641
    .local v12, "$i$a$-trim-ProjectUploadActivity$NameInputTextWatcher$validateName$1":I
    const/16 v13, 0x20

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v13

    if-gtz v13, :cond_3

    move v11, v3

    goto :goto_3

    :cond_3
    move v11, v2

    .line 675
    .end local v12    # "$i$a$-trim-ProjectUploadActivity$NameInputTextWatcher$validateName$1":I
    .local v11, "match$iv$iv":Z
    :goto_3
    if-nez v9, :cond_5

    .line 676
    if-nez v11, :cond_4

    .line 677
    const/4 v9, 0x1

    goto :goto_4

    .line 679
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 681
    :cond_5
    if-nez v11, :cond_6

    .line 682
    goto :goto_5

    .line 684
    :cond_6
    add-int/lit8 v8, v8, -0x1

    .line 685
    .end local v10    # "index$iv$iv":I
    .end local v11    # "match$iv$iv":Z
    :goto_4
    nop

    .line 671
    goto :goto_1

    .line 688
    :cond_7
    :goto_5
    add-int/lit8 v10, v8, 0x1

    invoke-interface {v5, v7, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 666
    .end local v5    # "$this$trim$iv$iv":Ljava/lang/CharSequence;
    .end local v6    # "$i$f$trim":I
    .end local v7    # "startIndex$iv$iv":I
    .end local v8    # "endIndex$iv$iv":I
    .end local v9    # "startFound$iv$iv":Z
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 642
    .end local v1    # "$this$trim$iv":Ljava/lang/String;
    .end local v4    # "$i$f$trim":I
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_8

    move v1, v3

    goto :goto_6

    :cond_8
    move v1, v2

    :goto_6
    if-eqz v1, :cond_9

    .line 643
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    const v2, 0x7f1205a0

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 645
    :cond_9
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    const v4, 0x7f120247

    invoke-virtual {v1, v4}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 646
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    const v4, 0x7f120312

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {v1, v4, v3}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 648
    :cond_a
    nop

    .line 649
    nop

    .line 650
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->access$getProject$p(Lorg/catrobat/catroid/ui/ProjectUploadActivity;)Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_b

    .line 649
    sget-object v1, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    invoke-static {v1}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->getProjectNames(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 650
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 652
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectUploadActivity$NameInputTextWatcher;->this$0:Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    const v2, 0x7f12059f

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/ProjectUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 653
    :cond_b
    const/4 v1, 0x0

    .line 648
    :goto_7
    return-object v1
.end method
