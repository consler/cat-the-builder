.class public final Lorg/catrobat/catroid/utils/SnackbarUtil;
.super Ljava/lang/Object;
.source "SnackbarUtil.java"


# static fields
.field private static final CURRENTLY_SHOWN_HINTS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/material/snackbar/Snackbar;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_LINES:I = 0x5

.field public static final SHOWN_HINT_LIST:Ljava/lang/String; = "shown_hint_list"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/utils/SnackbarUtil;->CURRENTLY_SHOWN_HINTS:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "no"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .line 47
    sget-object v0, Lorg/catrobat/catroid/utils/SnackbarUtil;->CURRENTLY_SHOWN_HINTS:Ljava/util/HashMap;

    return-object v0
.end method

.method public static areHintsEnabled(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 121
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "setting_enable_hints"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static dismissAllHints()V
    .locals 2

    .line 169
    sget-object v0, Lorg/catrobat/catroid/utils/SnackbarUtil;->CURRENTLY_SHOWN_HINTS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/snackbar/Snackbar;

    .line 170
    .local v1, "hint":Lcom/google/android/material/snackbar/Snackbar;
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    .line 171
    .end local v1    # "hint":Lcom/google/android/material/snackbar/Snackbar;
    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method

.method private static getStringSetFromSharedPreferences(Landroid/content/Context;)Ljava/util/Set;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 126
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "shown_hint_list"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method protected static handleHideHints(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 154
    nop

    .line 155
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 157
    .local v0, "sharedPreferencesSetFalse":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 158
    const-string v2, "setting_enable_hints"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 159
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
    invoke-static {p0}, Lorg/catrobat/catroid/utils/SnackbarUtil;->setHintDialogShown(Landroid/app/Activity;)V

    .line 161
    return-void
.end method

.method protected static handleShowHints(Landroid/app/Activity;I)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resourceId"    # I

    .line 164
    invoke-static {p0}, Lorg/catrobat/catroid/utils/SnackbarUtil;->setHintDialogShown(Landroid/app/Activity;)V

    .line 165
    invoke-static {p0, p1}, Lorg/catrobat/catroid/utils/SnackbarUtil;->hintSnackbar(Landroid/app/Activity;I)V

    .line 166
    return-void
.end method

.method public static hintSnackbar(Landroid/app/Activity;I)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resourceId"    # I

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "messageId":Ljava/lang/String;
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, "contentView":Landroid/view/View;
    if-nez v1, :cond_0

    .line 75
    return-void

    .line 78
    :cond_0
    const/4 v2, -0x2

    invoke-static {v1, p1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v2

    .line 79
    .local v2, "snackbar":Lcom/google/android/material/snackbar/Snackbar;
    const v3, 0x7f1204c6

    new-instance v4, Lorg/catrobat/catroid/utils/SnackbarUtil$1;

    invoke-direct {v4, p0, v0}, Lorg/catrobat/catroid/utils/SnackbarUtil$1;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 86
    new-instance v3, Lorg/catrobat/catroid/utils/SnackbarUtil$2;

    invoke-direct {v3, p1}, Lorg/catrobat/catroid/utils/SnackbarUtil$2;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 98
    const v3, 0x7f060153

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 99
    invoke-virtual {v2}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v3

    .line 100
    .local v3, "snackbarView":Landroid/view/View;
    const v4, 0x7f0a05c2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 101
    .local v4, "textView":Landroid/widget/TextView;
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 102
    const v5, 0x7f060154

    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    const v5, 0x7f060152

    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 104
    invoke-virtual {v2}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 105
    return-void
.end method

.method static synthetic lambda$showDisableHintsDialog$0(Landroid/app/Activity;ILandroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resourceId"    # I
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "id"    # I

    .line 145
    invoke-static {p0, p1}, Lorg/catrobat/catroid/utils/SnackbarUtil;->handleShowHints(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic lambda$showDisableHintsDialog$1(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 147
    invoke-static {p0}, Lorg/catrobat/catroid/utils/SnackbarUtil;->handleHideHints(Landroid/app/Activity;)V

    return-void
.end method

.method public static setHintDialogShown(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 130
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 132
    const-string v1, "disableHintsDialogShown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 134
    return-void
.end method

.method public static setHintShown(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "messageId"    # Ljava/lang/String;

    .line 108
    invoke-static {p0}, Lorg/catrobat/catroid/utils/SnackbarUtil;->getStringSetFromSharedPreferences(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 109
    .local v0, "hintList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 111
    const-string v2, "shown_hint_list"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 112
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    return-void
.end method

.method public static showDisableHintsDialog(Landroid/app/Activity;I)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resourceId"    # I

    .line 141
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 142
    const v1, 0x7f12026f

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 143
    const v1, 0x7f12026e

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/catrobat/catroid/utils/-$$Lambda$SnackbarUtil$sZ-GHgD4cq2JzzJxv_iRR48f96M;

    invoke-direct {v1, p0, p1}, Lorg/catrobat/catroid/utils/-$$Lambda$SnackbarUtil$sZ-GHgD4cq2JzzJxv_iRR48f96M;-><init>(Landroid/app/Activity;I)V

    .line 144
    const v2, 0x7f12026d

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/catrobat/catroid/utils/-$$Lambda$SnackbarUtil$Lr2itlNFPfmOm8S_Wdng1zX_TKw;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/utils/-$$Lambda$SnackbarUtil$Lr2itlNFPfmOm8S_Wdng1zX_TKw;-><init>(Landroid/app/Activity;)V

    .line 146
    const v2, 0x7f12026c

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 148
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public static showHintSnackbar(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resourceId"    # I

    .line 60
    invoke-static {}, Lorg/catrobat/catroid/utils/SnackbarUtil;->dismissAllHints()V

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "messageId":Ljava/lang/String;
    invoke-static {p0}, Lorg/catrobat/catroid/utils/SnackbarUtil;->areHintsEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lorg/catrobat/catroid/utils/SnackbarUtil;->wasHintDialogAlreadyShown(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    invoke-static {p0, p1}, Lorg/catrobat/catroid/utils/SnackbarUtil;->showDisableHintsDialog(Landroid/app/Activity;I)Z

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {p0, v0}, Lorg/catrobat/catroid/utils/SnackbarUtil;->wasHintAlreadyShown(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lorg/catrobat/catroid/utils/SnackbarUtil;->areHintsEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-static {p0, p1}, Lorg/catrobat/catroid/utils/SnackbarUtil;->hintSnackbar(Landroid/app/Activity;I)V

    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method public static wasHintAlreadyShown(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "messageId"    # Ljava/lang/String;

    .line 116
    invoke-static {p0}, Lorg/catrobat/catroid/utils/SnackbarUtil;->getStringSetFromSharedPreferences(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 117
    .local v0, "hintList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static wasHintDialogAlreadyShown(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 137
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "disableHintsDialogShown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
