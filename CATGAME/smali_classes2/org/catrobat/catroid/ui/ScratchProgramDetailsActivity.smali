.class public Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;
.super Lorg/catrobat/catroid/ui/BaseActivity;
.source "ScratchProgramDetailsActivity.java"

# interfaces
.implements Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$ScratchProgramListTaskDelegate;
.implements Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;
.implements Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;
.implements Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/ui/BaseActivity;",
        "Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$ScratchProgramListTaskDelegate;",
        "Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;",
        "Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener<",
        "Lorg/catrobat/catroid/common/ScratchProgramData;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

.field private static dataFetcher:Lorg/catrobat/catroid/web/ScratchDataFetcher;


# instance fields
.field private adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

.field private convertButton:Landroid/widget/Button;

.field private fetchRemixesTask:Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;

.field private programData:Lorg/catrobat/catroid/common/ScratchProgramData;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    const-class v0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->TAG:Ljava/lang/String;

    .line 77
    new-instance v0, Lorg/catrobat/catroid/web/ServerCalls;

    sget-object v1, Lorg/catrobat/catroid/web/CatrobatWebClient;->INSTANCE:Lorg/catrobat/catroid/web/CatrobatWebClient;

    invoke-virtual {v1}, Lorg/catrobat/catroid/web/CatrobatWebClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/web/ServerCalls;-><init>(Lokhttp3/OkHttpClient;)V

    sput-object v0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->dataFetcher:Lorg/catrobat/catroid/web/ScratchDataFetcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/BaseActivity;-><init>()V

    .line 82
    new-instance v0, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;

    invoke-direct {v0}, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->fetchRemixesTask:Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;

    return-void
.end method

.method static synthetic access$000()Lorg/catrobat/catroid/scratchconverter/ConversionManager;
    .locals 1

    .line 70
    sget-object v0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    return-object v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;)Lorg/catrobat/catroid/common/ScratchProgramData;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;

    .line 70
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    return-object v0
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;Lorg/catrobat/catroid/common/ScratchProgramData;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;
    .param p1, "x1"    # Lorg/catrobat/catroid/common/ScratchProgramData;

    .line 70
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->convertProgram(Lorg/catrobat/catroid/common/ScratchProgramData;)V

    return-void
.end method

.method private convertProgram(Lorg/catrobat/catroid/common/ScratchProgramData;)V
    .locals 10
    .param p1, "item"    # Lorg/catrobat/catroid/common/ScratchProgramData;

    .line 166
    sget-object v0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    invoke-interface {v0}, Lorg/catrobat/catroid/scratchconverter/ConversionManager;->getNumberOfJobsInProgress()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-le v0, v2, :cond_0

    .line 167
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f100019

    new-array v3, v3, [Ljava/lang/Object;

    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    .line 167
    invoke-virtual {v0, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {p1}, Lorg/catrobat/catroid/utils/Utils;->isDeprecatedScratchProgram(Lorg/catrobat/catroid/common/ScratchProgramData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 173
    .local v0, "dateFormat":Ljava/text/DateFormat;
    const v2, 0x7f1202d0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 174
    invoke-virtual {p1}, Lorg/catrobat/catroid/common/ScratchProgramData;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {}, Lorg/catrobat/catroid/utils/Utils;->getScratchSecondReleasePublishedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 173
    invoke-virtual {p0, v2, v4}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    goto :goto_0

    :cond_1
    sget-object v0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/ScratchProgramData;->getId()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lorg/catrobat/catroid/scratchconverter/ConversionManager;->isJobInProgress(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->onJobInProgress()V

    goto :goto_0

    .line 177
    :cond_2
    sget-object v0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/ScratchProgramData;->getId()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lorg/catrobat/catroid/scratchconverter/ConversionManager;->isJobDownloading(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->onJobDownloading()V

    goto :goto_0

    .line 180
    :cond_3
    sget-object v4, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/ScratchProgramData;->getId()J

    move-result-wide v5

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/ScratchProgramData;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/ScratchProgramData;->getImage()Lcom/google/android/gms/common/images/WebImage;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lorg/catrobat/catroid/scratchconverter/ConversionManager;->convertProgram(JLjava/lang/String;Lcom/google/android/gms/common/images/WebImage;Z)V

    .line 182
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100023

    new-array v4, v3, [Ljava/lang/Object;

    .line 185
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 182
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void
.end method

.method private onJobDownloading()V
    .locals 2

    .line 230
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->convertButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 231
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->convertButton:Landroid/widget/Button;

    const v1, 0x7f120772

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 232
    return-void
.end method

.method private onJobInProgress()V
    .locals 2

    .line 225
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->convertButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 226
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->convertButton:Landroid/widget/Button;

    const v1, 0x7f120224

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 227
    return-void
.end method

.method private onJobNotInProgress()V
    .locals 2

    .line 220
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->convertButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 221
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->convertButton:Landroid/widget/Button;

    const v1, 0x7f120223

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 222
    return-void
.end method

.method private onProgramDataUpdated()V
    .locals 11

    .line 254
    const v0, 0x7f0a0564

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v1}, Lorg/catrobat/catroid/common/ScratchProgramData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    const v0, 0x7f0a049d

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v3}, Lorg/catrobat/catroid/common/ScratchProgramData;->getOwner()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f1201b3

    invoke-virtual {p0, v3, v2}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    const v0, 0x7f0a0329

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 259
    .local v0, "creditsView":Landroid/widget/TextView;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v2}, Lorg/catrobat/catroid/common/ScratchProgramData;->getNotesAndCredits()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v5, "\n\n"

    const v6, 0x7f0a0328

    const/16 v7, 0x8

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v2}, Lorg/catrobat/catroid/common/ScratchProgramData;->getNotesAndCredits()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 260
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v2}, Lorg/catrobat/catroid/common/ScratchProgramData;->getNotesAndCredits()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "notesAndCredits":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 262
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    .end local v2    # "notesAndCredits":Ljava/lang/String;
    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p0, v6}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 266
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    :goto_0
    const v2, 0x7f0a03f2

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 271
    .local v2, "instructionsView":Landroid/widget/TextView;
    iget-object v6, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v6}, Lorg/catrobat/catroid/common/ScratchProgramData;->getInstructions()Ljava/lang/String;

    move-result-object v6

    const-string v8, "-"

    if-eqz v6, :cond_2

    .line 272
    iget-object v6, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v6}, Lorg/catrobat/catroid/common/ScratchProgramData;->getInstructions()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "instructions":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    move-object v8, v3

    :cond_1
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    .end local v3    # "instructions":Ljava/lang/String;
    goto :goto_1

    .line 275
    :cond_2
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :goto_1
    const v3, 0x7f0a0588

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    .line 279
    invoke-virtual {v5}, Lorg/catrobat/catroid/common/ScratchProgramData;->getFavorites()I

    move-result v5

    invoke-static {v5}, Lorg/catrobat/catroid/utils/NumberFormats;->toMetricUnitRepresentation(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    const v3, 0x7f0a058a

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    .line 281
    invoke-virtual {v5}, Lorg/catrobat/catroid/common/ScratchProgramData;->getLoves()I

    move-result v5

    invoke-static {v5}, Lorg/catrobat/catroid/utils/NumberFormats;->toMetricUnitRepresentation(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    const v3, 0x7f0a058c

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    .line 283
    invoke-virtual {v5}, Lorg/catrobat/catroid/common/ScratchProgramData;->getViews()I

    move-result v5

    invoke-static {v5}, Lorg/catrobat/catroid/utils/NumberFormats;->toMetricUnitRepresentation(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    const v3, 0x7f0a0332

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 286
    .local v3, "dateSharedView":Landroid/widget/TextView;
    const v5, 0x7f0a0330

    invoke-virtual {p0, v5}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 288
    .local v5, "dateModifiedView":Landroid/widget/TextView;
    const v6, 0x7f0a0333

    invoke-virtual {p0, v6}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 289
    .local v6, "dateViews":Landroid/widget/RelativeLayout;
    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 291
    iget-object v8, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v8}, Lorg/catrobat/catroid/common/ScratchProgramData;->getSharedDate()Ljava/util/Date;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 292
    nop

    .line 293
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v1, v8}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v8

    iget-object v9, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v9}, Lorg/catrobat/catroid/common/ScratchProgramData;->getSharedDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 294
    .local v8, "dateSharedText":Ljava/lang/String;
    const v9, 0x7f12073b

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v8, v10, v4

    invoke-virtual {p0, v9, v10}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 297
    .end local v8    # "dateSharedText":Ljava/lang/String;
    goto :goto_2

    .line 298
    :cond_3
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    :goto_2
    iget-object v8, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v8}, Lorg/catrobat/catroid/common/ScratchProgramData;->getModifiedDate()Ljava/util/Date;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 302
    nop

    .line 303
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v1, v8}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v8

    iget-object v9, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v9}, Lorg/catrobat/catroid/common/ScratchProgramData;->getSharedDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 304
    .local v8, "dateModifiedText":Ljava/lang/String;
    const v9, 0x7f12055e

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v8, v1, v4

    invoke-virtual {p0, v9, v1}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 307
    .end local v8    # "dateModifiedText":Ljava/lang/String;
    goto :goto_3

    .line 308
    :cond_4
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    :goto_3
    const v1, 0x7f0a0551

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v1}, Lorg/catrobat/catroid/common/ScratchProgramData;->getVisibilityState()Lorg/catrobat/catroid/common/ScratchVisibilityState;

    move-result-object v1

    .line 314
    .local v1, "visibilityState":Lorg/catrobat/catroid/common/ScratchVisibilityState;
    const v8, 0x7f0a0549

    if-eqz v1, :cond_5

    sget-object v9, Lorg/catrobat/catroid/common/ScratchVisibilityState;->PUBLIC:Lorg/catrobat/catroid/common/ScratchVisibilityState;

    if-eq v1, v9, :cond_5

    .line 315
    invoke-virtual {p0, v8}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v8, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->convertButton:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 318
    :cond_5
    invoke-virtual {p0, v8}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v8, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->convertButton:Landroid/widget/Button;

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 322
    :goto_4
    iget-object v8, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v8}, Lorg/catrobat/catroid/common/ScratchProgramData;->getRemixes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const v9, 0x7f0a0576

    if-lez v8, :cond_6

    .line 323
    invoke-virtual {p0, v9}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 324
    const v7, 0x7f0a0571

    invoke-virtual {p0, v7}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v4, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    iget-object v7, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v7}, Lorg/catrobat/catroid/common/ScratchProgramData;->getRemixes()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->setItems(Ljava/util/List;)V

    goto :goto_5

    .line 327
    :cond_6
    invoke-virtual {p0, v9}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 329
    :goto_5
    return-void
.end method

.method public static setConversionManager(Lorg/catrobat/catroid/scratchconverter/ConversionManager;)V
    .locals 0
    .param p0, "manager"    # Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    .line 88
    sput-object p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    .line 89
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 93
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v0, 0x7f0d002a

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->setContentView(I)V

    .line 97
    const v0, 0x7f0a0617

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 98
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 99
    const v0, 0x7f120546

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "scratchConverter":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const v4, 0x7f12005b

    invoke-virtual {p0, v4}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 103
    .local v2, "scratchConverterBeta":Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 104
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 103
    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 107
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "scratchProgramData"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/common/ScratchProgramData;

    iput-object v3, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    .line 110
    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 112
    const v3, 0x7f0a0325

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->convertButton:Landroid/widget/Button;

    .line 113
    const v3, 0x7f0a0564

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v5}, Lorg/catrobat/catroid/common/ScratchProgramData;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const v3, 0x7f0a03f2

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v5, "-"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    sget-object v3, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    iget-object v5, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v5}, Lorg/catrobat/catroid/common/ScratchProgramData;->getId()J

    move-result-wide v5

    invoke-interface {v3, v5, v6}, Lorg/catrobat/catroid/scratchconverter/ConversionManager;->isJobInProgress(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->onJobInProgress()V

    goto :goto_1

    .line 118
    :cond_1
    sget-object v3, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    iget-object v5, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v5}, Lorg/catrobat/catroid/common/ScratchProgramData;->getId()J

    move-result-wide v5

    invoke-interface {v3, v5, v6}, Lorg/catrobat/catroid/scratchconverter/ConversionManager;->isJobDownloading(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->onJobDownloading()V

    goto :goto_1

    .line 121
    :cond_2
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->onJobNotInProgress()V

    .line 124
    :goto_1
    sget-object v3, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    iget-object v5, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v5}, Lorg/catrobat/catroid/common/ScratchProgramData;->getId()J

    move-result-wide v5

    invoke-interface {v3, v5, v6, p0}, Lorg/catrobat/catroid/scratchconverter/ConversionManager;->addJobViewListener(JLorg/catrobat/catroid/ui/scratchconverter/JobViewListener;)V

    .line 125
    sget-object v3, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    invoke-interface {v3, p0}, Lorg/catrobat/catroid/scratchconverter/ConversionManager;->addGlobalDownloadCallback(Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;)V

    .line 127
    iget-object v3, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->convertButton:Landroid/widget/Button;

    new-instance v5, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity$1;

    invoke-direct {v5, p0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity$1;-><init>(Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v3, 0x7f0a0571

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 143
    .local v3, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v5, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v5, v6}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;-><init>(Ljava/util/List;)V

    iput-object v5, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    .line 144
    invoke-virtual {v5, p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->setOnItemClickListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;)V

    .line 145
    iget-object v5, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    iput-boolean v4, v5, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->showRipples:Z

    .line 146
    iget-object v5, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    iput-boolean v4, v5, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;->showSettings:Z

    .line 148
    iget-object v5, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchProgramAdapter;

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 150
    iget-object v5, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v5}, Lorg/catrobat/catroid/common/ScratchProgramData;->getImage()Lcom/google/android/gms/common/images/WebImage;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v5}, Lorg/catrobat/catroid/common/ScratchProgramData;->getImage()Lcom/google/android/gms/common/images/WebImage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 151
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070198

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 152
    .local v5, "height":I
    iget-object v6, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v6}, Lorg/catrobat/catroid/common/ScratchProgramData;->getImage()Lcom/google/android/gms/common/images/WebImage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "originalImageURL":Ljava/lang/String;
    invoke-static {v6, v5}, Lorg/catrobat/catroid/utils/Utils;->changeSizeOfScratchImageURL(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, "thumbnailImageURL":Ljava/lang/String;
    const v8, 0x7f0a0552

    invoke-virtual {p0, v8}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 155
    .local v8, "image":Landroid/widget/ImageView;
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 158
    .end local v5    # "height":I
    .end local v6    # "originalImageURL":Ljava/lang/String;
    .end local v7    # "thumbnailImageURL":Ljava/lang/String;
    .end local v8    # "image":Landroid/widget/ImageView;
    :cond_3
    iget-object v5, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->fetchRemixesTask:Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;

    .line 159
    invoke-virtual {v5, p0}, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->setContext(Landroid/content/Context;)Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;

    move-result-object v5

    .line 160
    invoke-virtual {v5, p0}, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->setDelegate(Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask$ScratchProgramListTaskDelegate;)Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;

    move-result-object v5

    sget-object v6, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->dataFetcher:Lorg/catrobat/catroid/web/ScratchDataFetcher;

    .line 161
    invoke-virtual {v5, v6}, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->setFetcher(Lorg/catrobat/catroid/web/ScratchDataFetcher;)Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;

    .line 162
    iget-object v5, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->fetchRemixesTask:Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;

    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Long;

    iget-object v7, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v7}, Lorg/catrobat/catroid/common/ScratchProgramData;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v4

    invoke-virtual {v5, v6, v1}, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 163
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 197
    invoke-super {p0}, Lorg/catrobat/catroid/ui/BaseActivity;->onDestroy()V

    .line 198
    sget-object v0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v1}, Lorg/catrobat/catroid/common/ScratchProgramData;->getId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p0}, Lorg/catrobat/catroid/scratchconverter/ConversionManager;->removeJobViewListener(JLorg/catrobat/catroid/ui/scratchconverter/JobViewListener;)Z

    .line 199
    sget-object v0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    invoke-interface {v0, p0}, Lorg/catrobat/catroid/scratchconverter/ConversionManager;->removeGlobalDownloadCallback(Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;)Z

    .line 200
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->fetchRemixesTask:Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/transfers/FetchScratchProgramDetailsTask;->cancel(Z)Z

    .line 201
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 202
    return-void
.end method

.method public onDownloadFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "catrobatProgramName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 386
    invoke-static {p2}, Lorg/catrobat/catroid/utils/Utils;->extractScratchJobIDFromURL(Ljava/lang/String;)J

    move-result-wide v0

    .line 387
    .local v0, "jobID":J
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v2}, Lorg/catrobat/catroid/common/ScratchProgramData;->getId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 388
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->onJobNotInProgress()V

    .line 390
    :cond_0
    return-void
.end method

.method public onDownloadProgress(ILjava/lang/String;)V
    .locals 0
    .param p1, "progress"    # I
    .param p2, "url"    # Ljava/lang/String;

    .line 382
    return-void
.end method

.method public onDownloadStarted(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .line 374
    invoke-static {p1}, Lorg/catrobat/catroid/utils/Utils;->extractScratchJobIDFromURL(Ljava/lang/String;)J

    move-result-wide v0

    .line 375
    .local v0, "jobID":J
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v2}, Lorg/catrobat/catroid/common/ScratchProgramData;->getId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 376
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->onJobDownloading()V

    .line 378
    :cond_0
    return-void
.end method

.method public bridge synthetic onItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p1, Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->onItemClick(Lorg/catrobat/catroid/common/ScratchProgramData;)V

    return-void
.end method

.method public onItemClick(Lorg/catrobat/catroid/common/ScratchProgramData;)V
    .locals 2
    .param p1, "item"    # Lorg/catrobat/catroid/common/ScratchProgramData;

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "scratchProgramData"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 208
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 209
    return-void
.end method

.method public bridge synthetic onItemLongClick(Ljava/lang/Object;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V
    .locals 0

    .line 70
    check-cast p1, Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->onItemLongClick(Lorg/catrobat/catroid/common/ScratchProgramData;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V

    return-void
.end method

.method public onItemLongClick(Lorg/catrobat/catroid/common/ScratchProgramData;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V
    .locals 0
    .param p1, "item"    # Lorg/catrobat/catroid/common/ScratchProgramData;
    .param p2, "h"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    .line 213
    return-void
.end method

.method public onJobFailed(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
    .locals 4
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 360
    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v0

    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v2}, Lorg/catrobat/catroid/common/ScratchProgramData;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 361
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->onJobNotInProgress()V

    .line 363
    :cond_0
    return-void
.end method

.method public onJobFinished(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
    .locals 0
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 356
    return-void
.end method

.method public onJobOutput(Lorg/catrobat/catroid/scratchconverter/protocol/Job;[Ljava/lang/String;)V
    .locals 0
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    .param p2, "lines"    # [Ljava/lang/String;

    .line 352
    return-void
.end method

.method public onJobProgress(Lorg/catrobat/catroid/scratchconverter/protocol/Job;S)V
    .locals 0
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    .param p2, "progress"    # S

    .line 348
    return-void
.end method

.method public onJobReady(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
    .locals 0
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 340
    return-void
.end method

.method public onJobScheduled(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
    .locals 4
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 333
    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v0

    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v2}, Lorg/catrobat/catroid/common/ScratchProgramData;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 334
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->onJobInProgress()V

    .line 336
    :cond_0
    return-void
.end method

.method public onJobStarted(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
    .locals 0
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 344
    return-void
.end method

.method public onPostExecute(Lorg/catrobat/catroid/common/ScratchProgramData;)V
    .locals 1
    .param p1, "programData"    # Lorg/catrobat/catroid/common/ScratchProgramData;

    .line 244
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 245
    if-nez p1, :cond_0

    .line 246
    const v0, 0x7f120309

    invoke-static {p0, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    goto :goto_0

    .line 248
    :cond_0
    iput-object p1, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    .line 249
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->onProgramDataUpdated()V

    .line 251
    :goto_0
    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .line 236
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 237
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 238
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f120530

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 240
    return-void
.end method

.method public bridge synthetic onSettingsClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 70
    check-cast p1, Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->onSettingsClick(Lorg/catrobat/catroid/common/ScratchProgramData;Landroid/view/View;)V

    return-void
.end method

.method public onSettingsClick(Lorg/catrobat/catroid/common/ScratchProgramData;Landroid/view/View;)V
    .locals 0
    .param p1, "item"    # Lorg/catrobat/catroid/common/ScratchProgramData;
    .param p2, "view"    # Landroid/view/View;

    .line 217
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 191
    invoke-super {p0}, Lorg/catrobat/catroid/ui/BaseActivity;->onStart()V

    .line 192
    sget-object v0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    invoke-interface {v0, p0}, Lorg/catrobat/catroid/scratchconverter/ConversionManager;->setCurrentActivity(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 193
    return-void
.end method

.method public onUserCanceledDownload(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .line 394
    invoke-static {p1}, Lorg/catrobat/catroid/utils/Utils;->extractScratchJobIDFromURL(Ljava/lang/String;)J

    move-result-wide v0

    .line 395
    .local v0, "jobID":J
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v2}, Lorg/catrobat/catroid/common/ScratchProgramData;->getId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 396
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->onJobNotInProgress()V

    .line 398
    :cond_0
    return-void
.end method

.method public onUserCanceledJob(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
    .locals 4
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 367
    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v0

    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->programData:Lorg/catrobat/catroid/common/ScratchProgramData;

    invoke-virtual {v2}, Lorg/catrobat/catroid/common/ScratchProgramData;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 368
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ScratchProgramDetailsActivity;->onJobNotInProgress()V

    .line 370
    :cond_0
    return-void
.end method
