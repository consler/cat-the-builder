.class public final Lorg/catrobat/paintroid/dialog/SaveInformationDialog;
.super Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;
.source "SaveInformationDialog.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/dialog/SaveInformationDialog$Companion;,
        Lorg/catrobat/paintroid/dialog/SaveInformationDialog$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSaveInformationDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveInformationDialog.kt\norg/catrobat/paintroid/dialog/SaveInformationDialog\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,229:1\n11328#2:230\n11663#2,3:231\n*S KotlinDebug\n*F\n+ 1 SaveInformationDialog.kt\norg/catrobat/paintroid/dialog/SaveInformationDialog\n*L\n178#1:230\n178#1:231,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 <2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001<B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000eH\u0002J\u0010\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000eH\u0002J\u0008\u0010\u001b\u001a\u00020\u0018H\u0002J\u0008\u0010\u001c\u001a\u00020\u0018H\u0002J\u0008\u0010\u001d\u001a\u00020\u0018H\u0002J\u0010\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000eH\u0002J\u0010\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000eH\u0002J\u0010\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u000eH\u0002J\u0012\u0010\"\u001a\u00020\u00182\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0012\u0010%\u001a\u00020&2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0017J0\u0010\'\u001a\u00020\u00182\u000c\u0010(\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010)2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000e2\u0006\u0010*\u001a\u00020\u00122\u0006\u0010+\u001a\u00020,H\u0016J\u0016\u0010-\u001a\u00020\u00182\u000c\u0010(\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010)H\u0016J \u0010.\u001a\u00020\u00182\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u00122\u0006\u00102\u001a\u00020\u000cH\u0016J\u0010\u00103\u001a\u00020\u00182\u0006\u0010/\u001a\u000200H\u0016J\u0010\u00104\u001a\u00020\u00182\u0006\u0010/\u001a\u000200H\u0016J\u001a\u00105\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000e2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0018\u00106\u001a\u00020\u00182\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:H\u0002J\u0008\u0010;\u001a\u00020\u0018H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006="
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
        "fileType",
        "Lorg/catrobat/paintroid/FileIO$FileType;",
        "setSpinnerSelection",
        "Companion",
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
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
.method public static synthetic $r8$lambda$1gX5Gm36PBRD8Qbi-w3WofHskgw(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->onCreateDialog$lambda-2(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MpNFYx0wIYqO79vEDlIbGCI-zyU(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->initInfoButton$lambda-3(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$elu-N5WQPcRutJPWOnVikx0hWJk(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->onCreateDialog$lambda-1(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

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
    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;-><init>()V

    return-void
.end method

.method private final initImageName(Landroid/view/View;)V
    .locals 2

    .line 186
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_image_name_save_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.p\u2026int_image_name_save_text)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object p1, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->imageName:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "imageName"

    .line 187
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object v1, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->fileName:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "fileName"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final initInfoButton(Landroid/view/View;)V
    .locals 1

    .line 165
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_btn_save_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.pocketpaint_btn_save_info)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 166
    new-instance v0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$$ExternalSyntheticLambda0;-><init>(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final initInfoButton$lambda-3(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    sget-object p1, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    sget-object v0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/catrobat/paintroid/FileIO$FileType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object p0

    invoke-interface {p0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->showPngInformationDialog()V

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object p0

    invoke-interface {p0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->showCatrobatInformationDialog()V

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object p0

    invoke-interface {p0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->showOraInformationDialog()V

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object p0

    invoke-interface {p0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->showJpgInformationDialog()V

    :goto_0
    return-void
.end method

.method private final initJpgView()V
    .locals 4

    .line 145
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "inflater"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    .line 146
    :cond_0
    sget v2, Lorg/catrobat/paintroid/R$layout;->dialog_pocketpaint_save_jpg_sub_dialog:I

    .line 147
    iget-object v3, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->specificFormatLayout:Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    const-string v3, "specificFormatLayout"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    const/4 v3, 0x0

    .line 145
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflater.inflate(\n      \u2026          false\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->jpgView:Landroid/view/View;

    return-void
.end method

.method private final initPercentage()V
    .locals 3

    .line 159
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->jpgView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "jpgView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_percentage_save_info:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "jpgView.findViewById(R.i\u2026int_percentage_save_info)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->percentage:Landroidx/appcompat/widget/AppCompatTextView;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/FileIO;->getCompressQuality()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v2, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->percentage:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v2, :cond_1

    const-string v2, "percentage"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final initSeekBar()V
    .locals 2

    .line 153
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->jpgView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "jpgView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_jpg_seekbar_save_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "jpgView.findViewById(R.i\u2026nt_jpg_seekbar_save_info)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/SeekBar;

    .line 154
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/FileIO;->getCompressQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 155
    move-object v1, p0

    check-cast v1, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private final initSpecificFormatLayout(Landroid/view/View;)V
    .locals 1

    .line 141
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_save_format_specific_options:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.p\u2026_format_specific_options)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->specificFormatLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method private final initSpinner(Landroid/view/View;)V
    .locals 5

    .line 177
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_save_dialog_spinner:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.p\u2026aint_save_dialog_spinner)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->spinner:Landroid/widget/Spinner;

    .line 178
    invoke-static {}, Lorg/catrobat/paintroid/FileIO$FileType;->values()[Lorg/catrobat/paintroid/FileIO$FileType;

    move-result-object p1

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 231
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 178
    invoke-virtual {v3}, Lorg/catrobat/paintroid/FileIO$FileType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 179
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->spinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    const-string v3, "spinner"

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v1}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x1090008

    invoke-direct {p1, v1, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x1090009

    .line 180
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 181
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->spinner:Landroid/widget/Spinner;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 182
    iget-object p1, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->spinner:Landroid/widget/Spinner;

    if-nez p1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, p1

    :goto_1
    move-object p1, p0

    check-cast p1, Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private final initViews(Landroid/view/View;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->initSpecificFormatLayout(Landroid/view/View;)V

    .line 132
    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->initJpgView()V

    .line 133
    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->initSeekBar()V

    .line 134
    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->initPercentage()V

    .line 135
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->initSpinner(Landroid/view/View;)V

    .line 136
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->initInfoButton(Landroid/view/View;)V

    .line 137
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->initImageName(Landroid/view/View;)V

    return-void
.end method

.method private static final onCreateDialog$lambda-1(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;Landroid/content/DialogInterface;I)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    sget-object p1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    iget-object p1, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->imageName:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const-string p1, "imageName"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    .line 118
    sget-object p1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    sput-object p2, Lorg/catrobat/paintroid/FileIO;->storeImageUri:Landroid/net/Uri;

    .line 119
    sget-object p1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    sget-object p2, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    sget-object v0, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/FileIO;->getDefaultFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "requireContext().contentResolver"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0, v1}, Lorg/catrobat/paintroid/FileIO;->checkFileExists(Lorg/catrobat/paintroid/FileIO$FileType;Ljava/lang/String;Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 120
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object p1

    iget p2, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->permission:I

    iget-boolean v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->isExport:Z

    invoke-interface {p1, p2, v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->showOverwriteDialog(IZ)V

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object p1

    iget p2, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->permission:I

    iget-boolean v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->isExport:Z

    invoke-interface {p1, p2, v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->switchBetweenVersions(IZ)V

    .line 124
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->dismiss()V

    return-void
.end method

.method private static final onCreateDialog$lambda-2(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->dismiss()V

    return-void
.end method

.method private final setFileDetails(Landroid/graphics/Bitmap$CompressFormat;Lorg/catrobat/paintroid/FileIO$FileType;)V
    .locals 3

    .line 194
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->specificFormatLayout:Landroid/view/ViewGroup;

    const-string v1, "specificFormatLayout"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 195
    sget-object v0, Lorg/catrobat/paintroid/FileIO$FileType;->JPG:Lorg/catrobat/paintroid/FileIO$FileType;

    if-ne p2, v0, :cond_3

    .line 196
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->specificFormatLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v1, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->jpgView:Landroid/view/View;

    if-nez v1, :cond_2

    const-string v1, "jpgView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 198
    :cond_3
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    sput-object p1, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 199
    sget-object p1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    sput-object p2, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    return-void
.end method

.method private final setSpinnerSelection()V
    .locals 4

    .line 203
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    sget-object v1, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lorg/catrobat/paintroid/FileIO$FileType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "spinner"

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 207
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->spinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    sget-object v0, Lorg/catrobat/paintroid/FileIO$FileType;->PNG:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/FileIO$FileType;->ordinal()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 206
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->spinner:Landroid/widget/Spinner;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    sget-object v0, Lorg/catrobat/paintroid/FileIO$FileType;->CATROBAT:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/FileIO$FileType;->ordinal()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 205
    :cond_3
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->spinner:Landroid/widget/Spinner;

    if-nez v0, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v2, v0

    :goto_2
    sget-object v0, Lorg/catrobat/paintroid/FileIO$FileType;->ORA:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/FileIO$FileType;->ordinal()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 204
    :cond_5
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->spinner:Landroid/widget/Spinner;

    if-nez v0, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v2, v0

    :goto_3
    sget-object v0, Lorg/catrobat/paintroid/FileIO$FileType;->JPG:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/FileIO$FileType;->ordinal()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "requireArguments()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->permission:I

    const-string v0, "setName"

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->fileName:Ljava/lang/String;

    const-string v0, "isExport"

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->isExport:Z

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 110
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "requireActivity().layoutInflater"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "inflater"

    .line 111
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    sget v2, Lorg/catrobat/paintroid/R$layout;->dialog_pocketpaint_save:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "customLayout"

    .line 112
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 113
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/catrobat/paintroid/R$style;->PocketPaintAlertDialog:I

    invoke-direct {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 114
    sget v1, Lorg/catrobat/paintroid/R$string;->dialog_save_image_title:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 115
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 116
    sget v0, Lorg/catrobat/paintroid/R$string;->save_button_text:I

    new-instance v1, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$$ExternalSyntheticLambda1;-><init>(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 126
    sget v0, Lorg/catrobat/paintroid/R$string;->cancel_button_text:I

    new-instance v1, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$$ExternalSyntheticLambda2;-><init>(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const-string v0, "Builder(requireContext()\u2026) }\n            .create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string p3, "getDefault()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    sget-object p2, Lorg/catrobat/paintroid/FileIO$FileType;->JPG:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {p2}, Lorg/catrobat/paintroid/FileIO$FileType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget-object p2, Lorg/catrobat/paintroid/FileIO$FileType;->JPG:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->setFileDetails(Landroid/graphics/Bitmap$CompressFormat;Lorg/catrobat/paintroid/FileIO$FileType;)V

    goto :goto_1

    .line 214
    :cond_1
    sget-object p2, Lorg/catrobat/paintroid/FileIO$FileType;->PNG:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {p2}, Lorg/catrobat/paintroid/FileIO$FileType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sget-object p2, Lorg/catrobat/paintroid/FileIO$FileType;->PNG:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->setFileDetails(Landroid/graphics/Bitmap$CompressFormat;Lorg/catrobat/paintroid/FileIO$FileType;)V

    goto :goto_1

    .line 215
    :cond_2
    sget-object p2, Lorg/catrobat/paintroid/FileIO$FileType;->ORA:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {p2}, Lorg/catrobat/paintroid/FileIO$FileType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sget-object p2, Lorg/catrobat/paintroid/FileIO$FileType;->ORA:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->setFileDetails(Landroid/graphics/Bitmap$CompressFormat;Lorg/catrobat/paintroid/FileIO$FileType;)V

    goto :goto_1

    .line 216
    :cond_3
    sget-object p2, Lorg/catrobat/paintroid/FileIO$FileType;->CATROBAT:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {p2}, Lorg/catrobat/paintroid/FileIO$FileType;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sget-object p2, Lorg/catrobat/paintroid/FileIO$FileType;->CATROBAT:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->setFileDetails(Landroid/graphics/Bitmap$CompressFormat;Lorg/catrobat/paintroid/FileIO$FileType;)V

    :cond_4
    :goto_1
    return-void

    .line 212
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    const-string p3, "seekBar"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget-object p1, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->percentage:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez p1, :cond_0

    const-string p1, "percentage"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const/16 v0, 0x25

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    sget-object p1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {p1, p2}, Lorg/catrobat/paintroid/FileIO;->setCompressQuality(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-super {p0, p1, p2}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 104
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->initViews(Landroid/view/View;)V

    .line 105
    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->setSpinnerSelection()V

    return-void
.end method
