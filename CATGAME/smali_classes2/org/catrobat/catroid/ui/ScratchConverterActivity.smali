.class public Lorg/catrobat/catroid/ui/ScratchConverterActivity;
.super Lorg/catrobat/catroid/ui/BaseActivity;
.source "ScratchConverterActivity.java"

# interfaces
.implements Lorg/catrobat/catroid/ui/scratchconverter/BaseInfoViewListener;
.implements Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;
.implements Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;,
        Lorg/catrobat/catroid/ui/ScratchConverterActivity$FragmentPosition;
    }
.end annotation


# static fields
.field public static final FRAGMENT_PROJECTS:I = 0x1

.field public static final FRAGMENT_SEARCH:I

.field public static final TAG:Ljava/lang/String;

.field private static client:Lorg/catrobat/catroid/scratchconverter/Client;


# instance fields
.field private bottomBar:Landroid/view/View;

.field private conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

.field private finishedJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/scratchconverter/protocol/Job;",
            ">;"
        }
    .end annotation
.end field

.field private jobListListener:Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;

.field private runningJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/scratchconverter/protocol/Job;",
            ">;"
        }
    .end annotation
.end field

.field private scratchProjectsFragment:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;

.field private searchResultsFragment:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/BaseActivity;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->runningJobs:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->finishedJobs:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/ui/ScratchConverterActivity;)Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/ScratchConverterActivity;

    .line 60
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->searchResultsFragment:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    return-object v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/ui/ScratchConverterActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/ScratchConverterActivity;
    .param p1, "x1"    # I

    .line 60
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->switchToFragment(I)V

    return-void
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/ui/ScratchConverterActivity;)Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/ScratchConverterActivity;

    .line 60
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->scratchProjectsFragment:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;

    return-object v0
.end method

.method private listContainsJob(Ljava/util/List;Lorg/catrobat/catroid/scratchconverter/protocol/Job;)Z
    .locals 6
    .param p2, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/scratchconverter/protocol/Job;",
            ">;",
            "Lorg/catrobat/catroid/scratchconverter/protocol/Job;",
            ")Z"
        }
    .end annotation

    .line 341
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/scratchconverter/protocol/Job;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 342
    .local v1, "jobInList":Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    invoke-virtual {v1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v2

    invoke-virtual {p2}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 343
    const/4 v0, 0x1

    return v0

    .line 345
    .end local v1    # "jobInList":Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    :cond_0
    goto :goto_0

    .line 346
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private removeFromList(Ljava/util/List;Lorg/catrobat/catroid/scratchconverter/protocol/Job;)Z
    .locals 6
    .param p2, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/scratchconverter/protocol/Job;",
            ">;",
            "Lorg/catrobat/catroid/scratchconverter/protocol/Job;",
            ")Z"
        }
    .end annotation

    .line 350
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/scratchconverter/protocol/Job;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 351
    .local v1, "jobInList":Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    invoke-virtual {v1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v2

    invoke-virtual {p2}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 352
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 353
    const/4 v0, 0x1

    return v0

    .line 355
    .end local v1    # "jobInList":Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    :cond_0
    goto :goto_0

    .line 357
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static setClient(Lorg/catrobat/catroid/scratchconverter/Client;)V
    .locals 0
    .param p0, "converterClient"    # Lorg/catrobat/catroid/scratchconverter/Client;

    .line 76
    sput-object p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->client:Lorg/catrobat/catroid/scratchconverter/Client;

    .line 77
    return-void
.end method

.method private switchToFragment(I)V
    .locals 3
    .param p1, "fragmentPosition"    # I

    .line 150
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 152
    .local v0, "fragmentTransaction":Landroidx/fragment/app/FragmentTransaction;
    const v1, 0x7f0a03b7

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 166
    return-void

    .line 161
    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->scratchProjectsFragment:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;

    .line 162
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->TAG:Ljava/lang/String;

    .line 163
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 164
    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 155
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->searchResultsFragment:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 159
    nop

    .line 169
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 170
    return-void
.end method

.method private updateBottomBar()V
    .locals 8

    .line 214
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->bottomBar:Landroid/view/View;

    const v1, 0x7f0a0615

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 215
    .local v0, "titleView":Landroid/widget/TextView;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->bottomBar:Landroid/view/View;

    const v2, 0x7f0a0341

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 217
    .local v1, "detailsView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->runningJobs:Ljava/util/List;

    .line 218
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->runningJobs:Ljava/util/List;

    .line 219
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 217
    const v6, 0x7f100026

    invoke-virtual {v2, v6, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->finishedJobs:Ljava/util/List;

    .line 222
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->finishedJobs:Ljava/util/List;

    .line 223
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 221
    const v5, 0x7f100025

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->runningJobs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->finishedJobs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->bottomBar:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 226
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->bottomBar:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :goto_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 174
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 177
    :cond_0
    invoke-super {p0}, Lorg/catrobat/catroid/ui/BaseActivity;->onBackPressed()V

    .line 179
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 92
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f0d0029

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->setContentView(I)V

    .line 95
    const v0, 0x7f0a0617

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 96
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 97
    const v0, 0x7f120546

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "scratchConverter":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const v3, 0x7f12005b

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 101
    .local v1, "scratchConverterBeta":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 102
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    .line 101
    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 105
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 108
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    nop

    .line 109
    const-string v3, "scratchconverter.clientID"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 111
    .local v3, "clientID":J
    new-instance v5, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

    new-instance v6, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;

    invoke-direct {v6}, Lorg/catrobat/catroid/scratchconverter/protocol/WebSocketMessageListener;-><init>()V

    invoke-direct {v5, v3, v4, v6}, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;-><init>(JLorg/catrobat/catroid/scratchconverter/protocol/MessageListener;)V

    sput-object v5, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->client:Lorg/catrobat/catroid/scratchconverter/Client;

    .line 112
    new-instance v6, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v5, v7}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/catrobat/catroid/scratchconverter/Client;Z)V

    iput-object v6, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    .line 113
    invoke-interface {v6, p0}, Lorg/catrobat/catroid/scratchconverter/ConversionManager;->addBaseInfoViewListener(Lorg/catrobat/catroid/ui/scratchconverter/BaseInfoViewListener;)V

    .line 114
    iget-object v5, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    invoke-interface {v5, p0}, Lorg/catrobat/catroid/scratchconverter/ConversionManager;->addGlobalJobViewListener(Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;)V

    .line 115
    iget-object v5, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    invoke-interface {v5, p0}, Lorg/catrobat/catroid/scratchconverter/ConversionManager;->addGlobalDownloadCallback(Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;)V

    .line 117
    new-instance v5, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    invoke-direct {v5}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;-><init>()V

    iput-object v5, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->searchResultsFragment:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    .line 118
    iget-object v6, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    invoke-virtual {v5, v6}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->setConversionManager(Lorg/catrobat/catroid/scratchconverter/ConversionManager;)V

    .line 120
    new-instance v5, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;

    invoke-direct {v5}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;-><init>()V

    iput-object v5, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->scratchProjectsFragment:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;

    .line 121
    new-instance v6, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;

    iget-object v7, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->runningJobs:Ljava/util/List;

    invoke-direct {v6, v7}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;-><init>(Ljava/util/List;)V

    new-instance v7, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;

    iget-object v8, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->finishedJobs:Ljava/util/List;

    invoke-direct {v7, v8}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v6, v7}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;->initializeAdapters(Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;)V

    .line 124
    iget-object v5, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->scratchProjectsFragment:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchProgramsFragment;

    iput-object v5, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->jobListListener:Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;

    .line 126
    const v5, 0x7f0a0061

    invoke-virtual {p0, v5}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->bottomBar:Landroid/view/View;

    .line 127
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v5, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->bottomBar:Landroid/view/View;

    new-instance v6, Lorg/catrobat/catroid/ui/ScratchConverterActivity$1;

    invoke-direct {v6, p0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity$1;-><init>(Lorg/catrobat/catroid/ui/ScratchConverterActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v5, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->searchResultsFragment:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    iget-object v6, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    invoke-virtual {v5, v6}, Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;->setConversionManager(Lorg/catrobat/catroid/scratchconverter/ConversionManager;)V

    .line 144
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    iget-object v6, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->searchResultsFragment:Lorg/catrobat/catroid/ui/recyclerview/fragment/scratchconverter/ScratchSearchResultsFragment;

    .line 145
    const v7, 0x7f0a03b7

    invoke-virtual {v5, v7, v6}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    .line 146
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 147
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 192
    invoke-super {p0}, Lorg/catrobat/catroid/ui/BaseActivity;->onDestroy()V

    .line 193
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    invoke-interface {v0}, Lorg/catrobat/catroid/scratchconverter/ConversionManager;->shutdown()V

    .line 194
    return-void
.end method

.method public onDownloadFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "catrobatProgramName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 316
    invoke-static {p2}, Lorg/catrobat/catroid/utils/Utils;->extractScratchJobIDFromURL(Ljava/lang/String;)J

    move-result-wide v0

    .line 318
    .local v0, "jobId":J
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->finishedJobs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 319
    .local v3, "job":Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    invoke-virtual {v3}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_0

    .line 320
    sget-object v4, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->DOWNLOADED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->setDownloadState(Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;)V

    .line 322
    .end local v3    # "job":Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    :cond_0
    goto :goto_0

    .line 324
    :cond_1
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->jobListListener:Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;

    invoke-interface {v2}, Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;->onJobListChanged()V

    .line 325
    return-void
.end method

.method public onDownloadProgress(ILjava/lang/String;)V
    .locals 0
    .param p1, "progress"    # I
    .param p2, "url"    # Ljava/lang/String;

    .line 312
    return-void
.end method

.method public onDownloadStarted(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .line 299
    invoke-static {p1}, Lorg/catrobat/catroid/utils/Utils;->extractScratchJobIDFromURL(Ljava/lang/String;)J

    move-result-wide v0

    .line 301
    .local v0, "jobId":J
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->finishedJobs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 302
    .local v3, "job":Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    invoke-virtual {v3}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_0

    .line 303
    sget-object v4, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->DOWNLOADING:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->setDownloadState(Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;)V

    .line 305
    .end local v3    # "job":Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    :cond_0
    goto :goto_0

    .line 307
    :cond_1
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->jobListListener:Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;

    invoke-interface {v2}, Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;->onJobListChanged()V

    .line 308
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 234
    return-void
.end method

.method public onJobFailed(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
    .locals 2
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 279
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->runningJobs:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->removeFromList(Ljava/util/List;Lorg/catrobat/catroid/scratchconverter/protocol/Job;)Z

    .line 280
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->finishedJobs:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->listContainsJob(Ljava/util/List;Lorg/catrobat/catroid/scratchconverter/protocol/Job;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->finishedJobs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 283
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->updateBottomBar()V

    .line 284
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->jobListListener:Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;

    invoke-interface {v0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;->onJobListChanged()V

    .line 285
    return-void
.end method

.method public onJobFinished(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
    .locals 2
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 269
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->runningJobs:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->removeFromList(Ljava/util/List;Lorg/catrobat/catroid/scratchconverter/protocol/Job;)Z

    .line 270
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->finishedJobs:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->listContainsJob(Ljava/util/List;Lorg/catrobat/catroid/scratchconverter/protocol/Job;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->finishedJobs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 273
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->updateBottomBar()V

    .line 274
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->jobListListener:Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;

    invoke-interface {v0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;->onJobListChanged()V

    .line 275
    return-void
.end method

.method public onJobOutput(Lorg/catrobat/catroid/scratchconverter/protocol/Job;[Ljava/lang/String;)V
    .locals 0
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    .param p2, "lines"    # [Ljava/lang/String;

    .line 265
    return-void
.end method

.method public onJobProgress(Lorg/catrobat/catroid/scratchconverter/protocol/Job;S)V
    .locals 0
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    .param p2, "progress"    # S

    .line 261
    return-void
.end method

.method public onJobReady(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
    .locals 1
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 247
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->jobListListener:Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;

    invoke-interface {v0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;->onJobListChanged()V

    .line 248
    return-void
.end method

.method public onJobScheduled(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
    .locals 2
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 238
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->runningJobs:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->listContainsJob(Ljava/util/List;Lorg/catrobat/catroid/scratchconverter/protocol/Job;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->runningJobs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 241
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->updateBottomBar()V

    .line 242
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->jobListListener:Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;

    invoke-interface {v0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;->onJobListChanged()V

    .line 243
    return-void
.end method

.method public onJobStarted(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
    .locals 2
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 252
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->runningJobs:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->listContainsJob(Ljava/util/List;Lorg/catrobat/catroid/scratchconverter/protocol/Job;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->runningJobs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 255
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->updateBottomBar()V

    .line 256
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->jobListListener:Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;

    invoke-interface {v0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;->onJobListChanged()V

    .line 257
    return-void
.end method

.method public onJobsInfo([Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
    .locals 5
    .param p1, "jobs"    # [Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 198
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->runningJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->finishedJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 201
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 202
    .local v2, "job":Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    invoke-virtual {v2}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->isInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    iget-object v3, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->runningJobs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 204
    :cond_0
    invoke-virtual {v2}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getState()Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    move-result-object v3

    sget-object v4, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->UNSCHEDULED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    if-eq v3, v4, :cond_1

    .line 205
    iget-object v3, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->finishedJobs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v2    # "job":Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_2
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->updateBottomBar()V

    .line 210
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->jobListListener:Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;

    invoke-interface {v0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;->onJobListChanged()V

    .line 211
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 183
    invoke-super {p0}, Lorg/catrobat/catroid/ui/BaseActivity;->onStart()V

    .line 184
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    invoke-interface {v0, p0}, Lorg/catrobat/catroid/scratchconverter/ConversionManager;->setCurrentActivity(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 185
    sget-object v0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->client:Lorg/catrobat/catroid/scratchconverter/Client;

    invoke-interface {v0}, Lorg/catrobat/catroid/scratchconverter/Client;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->conversionManager:Lorg/catrobat/catroid/scratchconverter/ConversionManager;

    invoke-interface {v0}, Lorg/catrobat/catroid/scratchconverter/ConversionManager;->connectAndAuthenticate()V

    .line 188
    :cond_0
    return-void
.end method

.method public onUserCanceledDownload(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .line 329
    invoke-static {p1}, Lorg/catrobat/catroid/utils/Utils;->extractScratchJobIDFromURL(Ljava/lang/String;)J

    move-result-wide v0

    .line 331
    .local v0, "jobId":J
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->finishedJobs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 332
    .local v3, "job":Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    invoke-virtual {v3}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_0

    .line 333
    sget-object v4, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->CANCELED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->setDownloadState(Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;)V

    .line 335
    .end local v3    # "job":Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    :cond_0
    goto :goto_0

    .line 337
    :cond_1
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->jobListListener:Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;

    invoke-interface {v2}, Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;->onJobListChanged()V

    .line 338
    return-void
.end method

.method public onUserCanceledJob(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
    .locals 2
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 289
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->runningJobs:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->removeFromList(Ljava/util/List;Lorg/catrobat/catroid/scratchconverter/protocol/Job;)Z

    .line 290
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->finishedJobs:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->listContainsJob(Ljava/util/List;Lorg/catrobat/catroid/scratchconverter/protocol/Job;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->finishedJobs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 293
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->updateBottomBar()V

    .line 294
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ScratchConverterActivity;->jobListListener:Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;

    invoke-interface {v0}, Lorg/catrobat/catroid/ui/ScratchConverterActivity$OnJobListListener;->onJobListChanged()V

    .line 295
    return-void
.end method
