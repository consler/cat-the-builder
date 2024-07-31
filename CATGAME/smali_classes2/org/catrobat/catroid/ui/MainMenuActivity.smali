.class public Lorg/catrobat/catroid/ui/MainMenuActivity;
.super Lorg/catrobat/catroid/ui/BaseCastActivity;
.source "MainMenuActivity.java"

# interfaces
.implements Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static surveyCampaign:Lorg/catrobat/catroid/common/Survey;


# instance fields
.field private oldPrivacyPolicy:I

.field private final projectManager:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lorg/catrobat/catroid/ProjectManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-class v0, Lorg/catrobat/catroid/ui/MainMenuActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/MainMenuActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/BaseCastActivity;-><init>()V

    .line 78
    const-class v0, Lorg/catrobat/catroid/ProjectManager;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->inject(Ljava/lang/Class;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/MainMenuActivity;->projectManager:Lkotlin/Lazy;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/ui/MainMenuActivity;->oldPrivacyPolicy:I

    return-void
.end method

.method private loadContent()V
    .locals 2

    .line 186
    const v0, 0x7f0d0021

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->setContentView(I)V

    .line 187
    iget v0, p0, Lorg/catrobat/catroid/ui/MainMenuActivity;->oldPrivacyPolicy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 188
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->prepareStandaloneProject()V

    .line 190
    :cond_0
    return-void
.end method

.method private loadFragment()V
    .locals 5

    .line 208
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;

    invoke-direct {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;-><init>()V

    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$Companion;

    .line 210
    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$Companion;->getTAG()Ljava/lang/String;

    move-result-object v2

    .line 209
    const v3, 0x7f0a03b7

    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->setShowProgressBar(Z)V

    .line 214
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 221
    .local v1, "shareUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/catrobat/catroid/ui/WebViewActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v2, "webIntent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/MainMenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 225
    .end local v1    # "shareUri":Landroid/net/Uri;
    .end local v2    # "webIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private prepareStandaloneProject()V
    .locals 4

    .line 321
    :try_start_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "catrobat_project.zip"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 322
    .local v0, "inputStream":Ljava/io/InputStream;
    new-instance v1, Ljava/io/File;

    sget-object v2, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    const-string v3, "Generated catrobat project"

    .line 323
    invoke-static {v3}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->encodeSpecialCharsForFileSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 324
    .local v1, "projectDir":Ljava/io/File;
    new-instance v2, Lorg/catrobat/catroid/io/ZipArchiver;

    invoke-direct {v2}, Lorg/catrobat/catroid/io/ZipArchiver;-><init>()V

    .line 325
    invoke-virtual {v2, v0, v1}, Lorg/catrobat/catroid/io/ZipArchiver;->unzip(Ljava/io/InputStream;Ljava/io/File;)V

    .line 326
    new-instance v2, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;

    invoke-direct {v2, v1, p0}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;-><init>(Ljava/io/File;Landroid/content/Context;)V

    .line 327
    invoke-virtual {v2, p0}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->setListener(Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;)Lorg/catrobat/catroid/io/asynctask/ProjectLoader;

    move-result-object v2

    .line 328
    invoke-virtual {v2}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->loadProjectAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v1    # "projectDir":Ljava/io/File;
    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "STANDALONE"

    const-string v2, "Cannot unpack standalone project: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private setShowProgressBar(Z)V
    .locals 4
    .param p1, "show"    # Z

    .line 228
    const v0, 0x7f0a054c

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 229
    const v0, 0x7f0a03b7

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    return-void
.end method

.method private showTermsOfUseDialog()V
    .locals 8

    .line 112
    const v0, 0x7f0d01cb

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a0356

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 116
    .local v1, "termsOfUseUrlTextView":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 118
    const v2, 0x7f120547

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/MainMenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "termsOfUseUrlStringText":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "https://share.catrob.at/pocketcode/termsOfUse?flavorName=catroid&versionCode=90"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const v4, 0x7f12077d

    invoke-virtual {p0, v4, v3}, Lorg/catrobat/catroid/ui/MainMenuActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "termsOfUseUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v6, Lorg/catrobat/catroid/ui/-$$Lambda$MainMenuActivity$B4cO-JUwRqCEnRAInRZPFOG9Pno;

    invoke-direct {v6, p0}, Lorg/catrobat/catroid/ui/-$$Lambda$MainMenuActivity$B4cO-JUwRqCEnRAInRZPFOG9Pno;-><init>(Lorg/catrobat/catroid/ui/MainMenuActivity;)V

    .line 128
    const v7, 0x7f12022f

    invoke-virtual {v4, v7, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v6, Lorg/catrobat/catroid/ui/-$$Lambda$MainMenuActivity$6M_wFzuiF0_GprI6NGABP_OUjcg;

    invoke-direct {v6, p0}, Lorg/catrobat/catroid/ui/-$$Lambda$MainMenuActivity$6M_wFzuiF0_GprI6NGABP_OUjcg;-><init>(Lorg/catrobat/catroid/ui/MainMenuActivity;)V

    .line 131
    const v7, 0x7f120024

    invoke-virtual {v4, v7, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    .line 134
    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lorg/catrobat/catroid/ui/-$$Lambda$MainMenuActivity$z0bl7Pf3DESyy351jWkQq_W1W38;

    invoke-direct {v5, p0}, Lorg/catrobat/catroid/ui/-$$Lambda$MainMenuActivity$z0bl7Pf3DESyy351jWkQq_W1W38;-><init>(Lorg/catrobat/catroid/ui/MainMenuActivity;)V

    .line 135
    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    .line 142
    invoke-virtual {v4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    .line 143
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 144
    return-void
.end method


# virtual methods
.method public handleAgreedToPrivacyPolicyButton()V
    .locals 3

    .line 147
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 149
    const-string v1, "AgreedToCurrentPrivacyPolicy"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 152
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->prepareStandaloneProject()V

    .line 153
    return-void
.end method

.method public handleDeclinedPrivacyPolicyButton()V
    .locals 7

    .line 156
    const v0, 0x7f0d0119

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 159
    .local v0, "dialogView":Landroid/view/View;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "https://share.catrob.at/app/"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 161
    const v2, 0x7f12073a

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/MainMenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 159
    const v2, 0x7f120023

    invoke-virtual {p0, v2, v1}, Lorg/catrobat/catroid/ui/MainMenuActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "linkString":Ljava/lang/String;
    const v2, 0x7f0a05ab

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 164
    .local v2, "linkTextView":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 165
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {v4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lorg/catrobat/catroid/ui/-$$Lambda$MainMenuActivity$_84Bzw4dzrhwBoh6Hr80_dhlfQc;

    invoke-direct {v5, p0}, Lorg/catrobat/catroid/ui/-$$Lambda$MainMenuActivity$_84Bzw4dzrhwBoh6Hr80_dhlfQc;-><init>(Lorg/catrobat/catroid/ui/MainMenuActivity;)V

    .line 169
    const v6, 0x7f1205ff

    invoke-virtual {v4, v6, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    .line 172
    invoke-virtual {v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lorg/catrobat/catroid/ui/-$$Lambda$MainMenuActivity$QzmoRrJlqhTDF61wJfho8pOfuNg;

    invoke-direct {v4, p0}, Lorg/catrobat/catroid/ui/-$$Lambda$MainMenuActivity$QzmoRrJlqhTDF61wJfho8pOfuNg;-><init>(Lorg/catrobat/catroid/ui/MainMenuActivity;)V

    .line 173
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 181
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 182
    return-void
.end method

.method public synthetic lambda$handleDeclinedPrivacyPolicyButton$3$MainMenuActivity(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 170
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->showTermsOfUseDialog()V

    .line 171
    return-void
.end method

.method public synthetic lambda$handleDeclinedPrivacyPolicyButton$4$MainMenuActivity(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 174
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 175
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 176
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->showTermsOfUseDialog()V

    .line 177
    const/4 v0, 0x1

    return v0

    .line 179
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$showTermsOfUseDialog$0$MainMenuActivity(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 129
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->handleDeclinedPrivacyPolicyButton()V

    .line 130
    return-void
.end method

.method public synthetic lambda$showTermsOfUseDialog$1$MainMenuActivity(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 132
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->handleAgreedToPrivacyPolicyButton()V

    .line 133
    return-void
.end method

.method public synthetic lambda$showTermsOfUseDialog$2$MainMenuActivity(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 136
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->finish()V

    .line 138
    const/4 v0, 0x1

    return v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 345
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->finish()V

    .line 351
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 88
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseCastActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setToChosenLanguage(Landroid/app/Activity;)V

    .line 92
    const v0, 0x7f150009

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 93
    const v0, 0x7f150008

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 94
    const v0, 0x7f150003

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 96
    invoke-static {p0}, Lorg/catrobat/catroid/utils/ScreenValueHandler;->updateScreenWidthAndHeight(Landroid/content/Context;)V

    .line 98
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    const-string v2, "AgreedToCurrentPrivacyPolicy"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/ui/MainMenuActivity;->oldPrivacyPolicy:I

    .line 101
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->loadContent()V

    .line 103
    iget v0, p0, Lorg/catrobat/catroid/ui/MainMenuActivity;->oldPrivacyPolicy:I

    if-eq v0, v1, :cond_0

    .line 104
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->showTermsOfUseDialog()V

    .line 107
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/common/Survey;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/common/Survey;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/catrobat/catroid/ui/MainMenuActivity;->surveyCampaign:Lorg/catrobat/catroid/common/Survey;

    .line 108
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/common/Survey;->showSurvey(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .line 247
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 249
    const v0, 0x7f120546

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "scratchConverter":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const v3, 0x7f12005b

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/MainMenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 253
    .local v1, "scratchConverterBeta":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 254
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 255
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    .line 253
    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 257
    const v2, 0x7f0a041c

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 258
    const/4 v2, 0x1

    return v2
.end method

.method public onLoadFinished(Z)V
    .locals 2
    .param p1, "success"    # Z

    .line 336
    if-eqz p1, :cond_0

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/catrobat/catroid/stage/StageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/ui/MainMenuActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 340
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 273
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a05a8

    if-eq v0, v1, :cond_0

    const-string v1, "android.intent.action.VIEW"

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 314
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseCastActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 285
    :pswitch_0
    new-instance v0, Lorg/catrobat/catroid/ui/dialogs/TermsOfUseDialogFragment;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/dialogs/TermsOfUseDialogFragment;-><init>()V

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/ui/dialogs/TermsOfUseDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/ui/dialogs/TermsOfUseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 286
    goto/16 :goto_1

    .line 296
    :pswitch_1
    invoke-static {p0}, Lorg/catrobat/catroid/utils/Utils;->checkIsNetworkAvailableAndShowErrorMessage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/catrobat/catroid/ui/ScratchConverterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 275
    :pswitch_2
    invoke-static {p0}, Lorg/catrobat/catroid/utils/Utils;->checkIsNetworkAvailableAndShowErrorMessage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 277
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v1, 0x7f120542

    invoke-static {p0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 281
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    goto :goto_1

    .line 288
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    .line 289
    const-string v2, "https://catrob.at/privacypolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 290
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 291
    goto :goto_1

    .line 307
    .end local v0    # "browserIntent":Landroid/content/Intent;
    :pswitch_4
    invoke-static {p0}, Lorg/catrobat/catroid/utils/Utils;->logoutUser(Landroid/content/Context;)V

    .line 308
    const v0, 0x7f120537

    invoke-static {p0, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;I)V

    .line 309
    goto :goto_1

    .line 304
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/catrobat/catroid/ui/SignInActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 305
    goto :goto_1

    .line 311
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v2, "https://catrob.at/help"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 312
    goto :goto_1

    .line 293
    :pswitch_7
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/AboutDialogFragment;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/AboutDialogFragment;-><init>()V

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/dialog/AboutDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/AboutDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 294
    goto :goto_1

    .line 301
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/catrobat/catroid/ui/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 302
    nop

    .line 316
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0415
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0a041c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .line 234
    invoke-super {p0}, Lorg/catrobat/catroid/ui/BaseCastActivity;->onPause()V

    .line 236
    iget-object v0, p0, Lorg/catrobat/catroid/ui/MainMenuActivity;->projectManager:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ProjectManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    .line 238
    .local v0, "currentProject":Lorg/catrobat/catroid/content/Project;
    if-eqz v0, :cond_0

    .line 239
    new-instance v1, Lorg/catrobat/catroid/io/asynctask/ProjectSaver;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/catrobat/catroid/io/asynctask/ProjectSaver;-><init>(Lorg/catrobat/catroid/content/Project;Landroid/content/Context;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/io/asynctask/ProjectSaver;->saveProjectAsync()V

    .line 241
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/MainMenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/catrobat/catroid/utils/Utils;->setLastUsedProjectName(Landroid/content/Context;Ljava/lang/String;)V

    .line 243
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 263
    const v0, 0x7f0a0417

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {p0}, Lorg/catrobat/catroid/utils/Utils;->isUserLoggedIn(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 264
    const v0, 0x7f0a0418

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {p0}, Lorg/catrobat/catroid/utils/Utils;->isUserLoggedIn(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 268
    return v2
.end method
