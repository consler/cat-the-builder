.class public final Lorg/catrobat/paintroid/dialog/SaveInformationDialog;
.super Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;
.source "SaveInformationDialog.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/dialog/SaveInformationDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSaveInformationDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveInformationDialog.kt\norg/catrobat/paintroid/dialog/SaveInformationDialog\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,235:1\n11298#2:236\n11633#2,3:237\n*E\n*S KotlinDebug\n*F\n+ 1 SaveInformationDialog.kt\norg/catrobat/paintroid/dialog/SaveInformationDialog\n*L\n182#1:236\n182#1,3:237\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 >2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001>B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000eH\u0002J\u0010\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000eH\u0002J\u0008\u0010\u001b\u001a\u00020\u0018H\u0002J\u0008\u0010\u001c\u001a\u00020\u0018H\u0002J\u0008\u0010\u001d\u001a\u00020\u0018H\u0002J\u0010\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000eH\u0002J\u0010\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000eH\u0002J\u0010\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u000eH\u0002J\u0012\u0010\"\u001a\u00020\u00182\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0012\u0010%\u001a\u00020&2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0017J0\u0010\'\u001a\u00020\u00182\u000c\u0010(\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010)2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000e2\u0006\u0010*\u001a\u00020\u00122\u0006\u0010+\u001a\u00020,H\u0016J\u0016\u0010-\u001a\u00020\u00182\u000c\u0010(\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010)H\u0016J \u0010.\u001a\u00020\u00182\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u00122\u0006\u00102\u001a\u00020\u000cH\u0016J\u0010\u00103\u001a\u00020\u00182\u0006\u0010/\u001a\u000200H\u0016J\u0010\u00104\u001a\u00020\u00182\u0006\u0010/\u001a\u000200H\u0016J\u001a\u00105\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000e2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J*\u00106\u001a\u00020\u00182\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u000c2\u0006\u0010:\u001a\u00020;2\u0008\u0008\u0002\u0010<\u001a\u00020\u000cH\u0002J\u0008\u0010=\u001a\u00020\u0018H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006?"
    }
    d2 = {
        "Lorg/catrobat/paintroid/dialog/SaveInformationDialog;",
        "Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "()V",
        "fileName",
        "",
        "imageName",
        "Landroidx/appcompat/widget/AppCompatEditText;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "isExport",
        "",
        "jpgView",
        "Landroid/view/View;",
        "percentage",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "permission",
        "",
        "specificFormatLayout",
        "Landroid/view/ViewGroup;",
        "spinner",
        "Landroid/widget/Spinner;",
        "initImageName",
        "",
        "view",
        "initInfoButton",
        "initJpgView",
        "initPercentage",
        "initSeekBar",
        "initSpecificFormatLayout",
        "initSpinner",
        "initViews",
        "customLayout",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "onItemSelected",
        "parent",
        "Landroid/widget/AdapterView;",
        "position",
        "id",
        "",
        "onNothingSelected",
        "onProgressChanged",
        "seekBar",
        "Landroid/widget/SeekBar;",
        "progress",
        "fromUser",
        "onStartTrackingTouch",
        "onStopTrackingTouch",
        "onViewCreated",
        "setFileDetails",
        "compressFormat",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "isCatrobatImage",
        "fileType",
        "Lorg/catrobat/paintroid/FileIO$FileType;",
        "isJpg",
        "setSpinnerSelection",
        "Companion",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/dialog/SaveInformationDialog$Companion;


# instance fields
.field private fileName:Ljava/lang/String;

.field private imageName:Landroidx/appcompat/widget/AppCompatEditText;

.field private inflater:Landroid/view/LayoutInflater;

.field private isExport:Z

.field private jpgView:Landroid/view/View;

.field private percentage:Landroidx/appcompat/widget/AppCompatTextView;

.field private permission:I

.field private specificFormatLayout:Landroid/view/ViewGroup;

.field private spinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->Companion:Lorg/catrobat/paintroid/dialog/SaveInformationDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    nop

    .line 54
    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getImageName$p(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;)Landroidx/appcompat/widget/AppCompatEditText;
    .locals 2
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/SaveInformationDialog;

    .line 53
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->imageName:Landroidx/appcompat/widget/AppCompatEditText;

    if-nez v0, :cond_0

    const-string v1, "imageName"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getPermission$p(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;)I
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/SaveInformationDialog;

    .line 53
    iget v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->permission:I

    return v0
.end method

.method public static final synthetic access$isExport$p(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;)Z
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/SaveInformationDialog;

    .line 53
    iget-boolean v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->isExport:Z

    return v0
.end method

.method public static final synthetic access$setExport$p(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;Z)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/SaveInformationDialog;
    .param p1, "<set-?>"    # Z

    .line 53
    iput-boolean p1, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->isExport:Z

    return-void
.end method

.method public static final synthetic access$setImageName$p(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;Landroidx/appcompat/widget/AppCompatEditText;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/SaveInformationDialog;
    .param p1, "<set-?>"    # Landroidx/appcompat/widget/AppCompatEditText;

    .line 53
    iput-object p1, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->imageName:Landroidx/appcompat/widget/AppCompatEditText;

    return-void
.end method

.method public static final synthetic access$setPermission$p(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;I)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/SaveInformationDialog;
    .param p1, "<set-?>"    # I

    .line 53
    iput p1, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->permission:I

    return-void
.end method

.method private final initImageName(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 190
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_image_name_save_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.p\u2026int_image_name_save_text)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->imageName:Landroidx/appcompat/widget/AppCompatEditText;

    .line 191
    if-nez v0, :cond_0

    const-string v1, "imageName"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->fileName:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v2, "fileName"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    return-void
.end method

.method private final initInfoButton(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 169
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_btn_save_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.pocketpaint_btn_save_info)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 170
    .local v0, "infoButton":Landroidx/appcompat/widget/AppCompatImageButton;
    new-instance v1, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$initInfoButton$1;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$initInfoButton$1;-><init>(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    return-void
.end method

.method private final initJpgView()V
    .locals 4

    .line 149
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->inflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    const-string v1, "inflater"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 150
    :cond_0
    sget v1, Lorg/catrobat/paintroid/R$layout;->dialog_pocketpaint_save_jpg_sub_dialog:I

    .line 151
    iget-object v2, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->specificFormatLayout:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    const-string v3, "specificFormatLayout"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 152
    :cond_1
    const/4 v3, 0x0

    .line 149
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflater.inflate(\n      \u2026          false\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->jpgView:Landroid/view/View;

    .line 154
    return-void
.end method

.method private final initPercentage()V
    .locals 3

    .line 163
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->jpgView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "jpgView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_percentage_save_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "jpgView.findViewById(R.i\u2026int_percentage_save_info)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->percentage:Landroidx/appcompat/widget/AppCompatTextView;

    .line 164
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/FileIO;->getCompressQuality()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x25

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "percentageString":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->percentage:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v1, :cond_1

    const-string v2, "percentage"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method private final initSeekBar()V
    .locals 2

    .line 157
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->jpgView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "jpgView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_jpg_seekbar_save_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "jpgView.findViewById(R.i\u2026nt_jpg_seekbar_save_info)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/SeekBar;

    .line 158
    .local v0, "seekBar":Landroid/widget/SeekBar;
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/FileIO;->getCompressQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 159
    move-object v1, p0

    check-cast v1, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 160
    return-void
.end method

.method private final initSpecificFormatLayout(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 145
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_save_format_specific_options:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.p\u2026_format_specific_options)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->specificFormatLayout:Landroid/view/ViewGroup;

    .line 146
    return-void
.end method

.method private final initSpinner(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .line 181
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_save_dialog_spinner:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.p\u2026aint_save_dialog_spinner)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->spinner:Landroid/widget/Spinner;

    .line 182
    invoke-static {}, Lorg/catrobat/paintroid/FileIO$FileType;->values()[Lorg/catrobat/paintroid/FileIO$FileType;

    move-result-object v0

    .local v0, "$this$map$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 236
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 237
    .local v4, "$i$f$mapTo":I
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v3, v6

    .line 238
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "it":Lorg/catrobat/paintroid/FileIO$FileType;
    const/4 v9, 0x0

    .line 182
    .local v9, "$i$a$-map-SaveInformationDialog$initSpinner$spinnerArray$1":I
    invoke-virtual {v8}, Lorg/catrobat/paintroid/FileIO$FileType;->getValue()Ljava/lang/String;

    move-result-object v8

    .end local v8    # "it":Lorg/catrobat/paintroid/FileIO$FileType;
    .end local v9    # "$i$a$-map-SaveInformationDialog$initSpinner$spinnerArray$1":I
    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 237
    nop

    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 239
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 236
    nop

    .line 182
    .end local v0    # "$this$map$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$map":I
    move-object v0, v2

    .line 183
    .local v0, "spinnerArray":Ljava/util/List;
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->spinner:Landroid/widget/Spinner;

    const-string v3, "spinner"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x1090008

    invoke-direct {v1, v2, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 184
    .local v1, "adapter":Landroid/widget/ArrayAdapter;
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 185
    iget-object v2, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->spinner:Landroid/widget/Spinner;

    if-nez v2, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    move-object v4, v1

    check-cast v4, Landroid/widget/SpinnerAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 186
    iget-object v2, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->spinner:Landroid/widget/Spinner;

    if-nez v2, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    move-object v3, p0

    check-cast v3, Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 187
    return-void
.end method

.method private final initViews(Landroid/view/View;)V
    .locals 0
    .param p1, "customLayout"    # Landroid/view/View;

    .line 135
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->initSpecificFormatLayout(Landroid/view/View;)V

    .line 136
    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->initJpgView()V

    .line 137
    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->initSeekBar()V

    .line 138
    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->initPercentage()V

    .line 139
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->initSpinner(Landroid/view/View;)V

    .line 140
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->initInfoButton(Landroid/view/View;)V

    .line 141
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->initImageName(Landroid/view/View;)V

    .line 142
    return-void
.end method

.method private final setFileDetails(Landroid/graphics/Bitmap$CompressFormat;ZLorg/catrobat/paintroid/FileIO$FileType;Z)V
    .locals 3
    .param p1, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "isCatrobatImage"    # Z
    .param p3, "fileType"    # Lorg/catrobat/paintroid/FileIO$FileType;
    .param p4, "isJpg"    # Z

    .line 200
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->specificFormatLayout:Landroid/view/ViewGroup;

    const-string v1, "specificFormatLayout"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 201
    if-eqz p4, :cond_3

    .line 202
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->specificFormatLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->jpgView:Landroid/view/View;

    if-nez v1, :cond_2

    const-string v2, "jpgView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 204
    :cond_3
    sput-object p1, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 205
    sput-boolean p2, Lorg/catrobat/paintroid/FileIO;->isCatrobatImage:Z

    .line 206
    sput-object p3, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    .line 207
    return-void
.end method

.method static synthetic setFileDetails$default(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;Landroid/graphics/Bitmap$CompressFormat;ZLorg/catrobat/paintroid/FileIO$FileType;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 198
    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->setFileDetails(Landroid/graphics/Bitmap$CompressFormat;ZLorg/catrobat/paintroid/FileIO$FileType;Z)V

    return-void
.end method

.method private final setSpinnerSelection()V
    .locals 3

    .line 210
    nop

    .line 211
    sget-boolean v0, Lorg/catrobat/paintroid/FileIO;->isCatrobatImage:Z

    const-string v1, "spinner"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->spinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 212
    :cond_1
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->spinner:Landroid/widget/Spinner;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 213
    :cond_3
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->spinner:Landroid/widget/Spinner;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 214
    :goto_0
    nop

    .line 215
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 95
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "requireArguments()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .local v0, "arguments":Landroid/os/Bundle;
    move-object v1, v0

    .local v1, "$this$apply":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 98
    .local v2, "$i$a$-apply-SaveInformationDialog$onCreate$1":I
    const-string v3, "permission"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->permission:I

    .line 99
    const-string v3, "setName"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->fileName:Ljava/lang/String;

    .line 100
    const-string v3, "isExport"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->isExport:Z

    .line 101
    nop

    .line 97
    .end local v1    # "$this$apply":Landroid/os/Bundle;
    .end local v2    # "$i$a$-apply-SaveInformationDialog$onCreate$1":I
    nop

    .line 102
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 112
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "requireActivity().layoutInflater"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->inflater:Landroid/view/LayoutInflater;

    .line 113
    if-nez v0, :cond_0

    const-string v1, "inflater"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget v1, Lorg/catrobat/paintroid/R$layout;->dialog_pocketpaint_save:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "customLayout":Landroid/view/View;
    const-string v1, "customLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 115
    nop

    .line 131
    nop

    .line 115
    nop

    .line 130
    nop

    .line 115
    nop

    .line 118
    nop

    .line 115
    nop

    .line 117
    nop

    .line 115
    nop

    .line 116
    nop

    .line 115
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/catrobat/paintroid/R$style;->PocketPaintAlertDialog:I

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 116
    sget v2, Lorg/catrobat/paintroid/R$string;->dialog_save_image_title:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 118
    sget v2, Lorg/catrobat/paintroid/R$string;->save_button_text:I

    new-instance v3, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$onCreateDialog$1;

    invoke-direct {v3, p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$onCreateDialog$1;-><init>(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 130
    sget v2, Lorg/catrobat/paintroid/R$string;->cancel_button_text:I

    new-instance v3, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$onCreateDialog$2;

    invoke-direct {v3, p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$onCreateDialog$2;-><init>(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    const-string v2, "AlertDialog.Builder(requ\u2026) }\n            .create()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Dialog;

    .line 115
    return-object v1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 218
    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "Locale.getDefault()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    sget-object v1, Lorg/catrobat/paintroid/FileIO$FileType;->JPG:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/FileIO$FileType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/catrobat/paintroid/FileIO$FileType;->JPG:Lorg/catrobat/paintroid/FileIO$FileType;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->setFileDetails(Landroid/graphics/Bitmap$CompressFormat;ZLorg/catrobat/paintroid/FileIO$FileType;Z)V

    goto :goto_1

    .line 220
    :cond_1
    sget-object v1, Lorg/catrobat/paintroid/FileIO$FileType;->PNG:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/FileIO$FileType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x0

    sget-object v5, Lorg/catrobat/paintroid/FileIO$FileType;->PNG:Lorg/catrobat/paintroid/FileIO$FileType;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->setFileDetails$default(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;Landroid/graphics/Bitmap$CompressFormat;ZLorg/catrobat/paintroid/FileIO$FileType;ZILjava/lang/Object;)V

    goto :goto_1

    .line 221
    :cond_2
    sget-object v1, Lorg/catrobat/paintroid/FileIO$FileType;->ORA:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/FileIO$FileType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x1

    sget-object v5, Lorg/catrobat/paintroid/FileIO$FileType;->ORA:Lorg/catrobat/paintroid/FileIO$FileType;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->setFileDetails$default(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;Landroid/graphics/Bitmap$CompressFormat;ZLorg/catrobat/paintroid/FileIO$FileType;ZILjava/lang/Object;)V

    goto :goto_1

    .line 222
    :cond_3
    sget-object v1, Lorg/catrobat/paintroid/FileIO$FileType;->CATROBAT:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/FileIO$FileType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v3, 0x0

    sget-object v4, Lorg/catrobat/paintroid/FileIO$FileType;->CATROBAT:Lorg/catrobat/paintroid/FileIO$FileType;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->setFileDetails$default(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;Landroid/graphics/Bitmap$CompressFormat;ZLorg/catrobat/paintroid/FileIO$FileType;ZILjava/lang/Object;)V

    .line 223
    :cond_4
    :goto_1
    nop

    .line 224
    return-void

    .line 218
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 226
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->percentage:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v0, :cond_0

    const-string v1, "percentage"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {v0, p2}, Lorg/catrobat/paintroid/FileIO;->setCompressQuality(I)V

    .line 230
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-super {p0, p1, p2}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 106
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->initViews(Landroid/view/View;)V

    .line 107
    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->setSpinnerSelection()V

    .line 108
    return-void
.end method
