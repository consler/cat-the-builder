.class public Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;
.super Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;
.source "NfcTagListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment<",
        "Lorg/catrobat/catroid/common/NfcTagData;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private nfcAdapter:Landroid/nfc/NfcAdapter;

.field private pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public addItem(Lorg/catrobat/catroid/common/NfcTagData;Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;)Z
    .locals 1
    .param p1, "item"    # Lorg/catrobat/catroid/common/NfcTagData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/common/NfcTagData;",
            "Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter<",
            "Lorg/catrobat/catroid/common/NfcTagData;",
            ">;)Z"
        }
    .end annotation

    .line 123
    .local p2, "localAdapter":Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter<Lorg/catrobat/catroid/common/NfcTagData;>;"
    invoke-virtual {p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p2, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected copyItems(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/NfcTagData;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p1, "selectedItems":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/NfcTagData;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->setShowProgressBar(Z)V

    .line 149
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/common/NfcTagData;

    .line 150
    .local v2, "item":Lorg/catrobat/catroid/common/NfcTagData;
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-virtual {v2}, Lorg/catrobat/catroid/common/NfcTagData;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v5}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Lorg/catrobat/catroid/common/NfcTagData;

    invoke-direct {v4}, Lorg/catrobat/catroid/common/NfcTagData;-><init>()V

    .line 153
    .local v4, "newItem":Lorg/catrobat/catroid/common/NfcTagData;
    invoke-virtual {v4, v3}, Lorg/catrobat/catroid/common/NfcTagData;->setName(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v2}, Lorg/catrobat/catroid/common/NfcTagData;->getNfcTagUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/common/NfcTagData;->setNfcTagUid(Ljava/lang/String;)V

    .line 156
    iget-object v5, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v5, v4}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v2    # "item":Lorg/catrobat/catroid/common/NfcTagData;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "newItem":Lorg/catrobat/catroid/common/NfcTagData;
    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100005

    .line 160
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 161
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    .line 159
    invoke-virtual {v2, v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->finishActionMode()V

    .line 163
    return-void
.end method

.method protected deleteItems(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/NfcTagData;",
            ">;)V"
        }
    .end annotation

    .line 173
    .local p1, "selectedItems":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/NfcTagData;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->setShowEmptyView(Z)V

    .line 175
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/common/NfcTagData;

    .line 176
    .local v2, "item":Lorg/catrobat/catroid/common/NfcTagData;
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->remove(Ljava/lang/Object;)Z

    .line 177
    .end local v2    # "item":Lorg/catrobat/catroid/common/NfcTagData;
    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100013

    .line 180
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 181
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    .line 179
    invoke-virtual {v2, v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->finishActionMode()V

    .line 183
    return-void
.end method

.method protected getDeleteAlertTitleId()I
    .locals 1

    .line 168
    const v0, 0x7f10000b

    return v0
.end method

.method protected getRenameDialogHint()I
    .locals 1

    .line 192
    const v0, 0x7f1205b6

    return v0
.end method

.method protected getRenameDialogTitle()I
    .locals 1

    .line 187
    const v0, 0x7f120706

    return v0
.end method

.method protected initializeAdapter()V
    .locals 3

    .line 91
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getNfcTagList()Ljava/util/List;

    move-result-object v0

    .line 92
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/NfcTagData;>;"
    const-string v1, "showDetailsNfcTags"

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->sharedPreferenceDetailsKey:Ljava/lang/String;

    .line 93
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/NfcTagAdapter;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/NfcTagAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    .line 94
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->emptyView:Landroid/widget/TextView;

    const v2, 0x7f1204b7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 95
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->onAdapterReady()V

    .line 96
    return-void
.end method

.method protected isBackpackEmpty()Z
    .locals 1

    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 59
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 63
    .local v0, "nfcIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->pendingIntent:Landroid/app/PendingIntent;

    .line 64
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1205b5

    invoke-static {v1, v2}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 66
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.NFC_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->startActivity(Landroid/content/Intent;)V

    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1205bb

    invoke-static {v1, v2}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    nop

    .line 71
    :goto_1
    return-void
.end method

.method public bridge synthetic onItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Lorg/catrobat/catroid/common/NfcTagData;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->onItemClick(Lorg/catrobat/catroid/common/NfcTagData;)V

    return-void
.end method

.method public bridge synthetic onItemClick(Lorg/catrobat/catroid/common/Nameable;)V
    .locals 0

    .line 51
    check-cast p1, Lorg/catrobat/catroid/common/NfcTagData;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->onItemClick(Lorg/catrobat/catroid/common/NfcTagData;)V

    return-void
.end method

.method public onItemClick(Lorg/catrobat/catroid/common/NfcTagData;)V
    .locals 2
    .param p1, "item"    # Lorg/catrobat/catroid/common/NfcTagData;

    .line 197
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->actionModeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 198
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onItemClick(Lorg/catrobat/catroid/common/Nameable;)V

    .line 200
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 105
    invoke-static {p1}, Lorg/catrobat/catroid/nfc/NfcHandler;->getTagIdFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "uid":Ljava/lang/String;
    invoke-static {v0}, Lorg/catrobat/catroid/nfc/NfcHandler;->setLastNfcTagId(Ljava/lang/String;)V

    .line 107
    invoke-static {p1}, Lorg/catrobat/catroid/nfc/NfcHandler;->getMessageFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/catrobat/catroid/nfc/NfcHandler;->setLastNfcTagMessage(Ljava/lang/String;)V

    .line 108
    if-eqz v0, :cond_1

    .line 109
    new-instance v1, Lorg/catrobat/catroid/common/NfcTagData;

    invoke-direct {v1}, Lorg/catrobat/catroid/common/NfcTagData;-><init>()V

    .line 110
    .local v1, "item":Lorg/catrobat/catroid/common/NfcTagData;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    const v3, 0x7f120252

    .line 111
    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v4}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/common/NfcTagData;->setName(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/common/NfcTagData;->setNfcTagUid(Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {p0, v1, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->addItem(Lorg/catrobat/catroid/common/NfcTagData;Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    sget-object v3, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->TAG:Ljava/lang/String;

    const-string v4, "NFC Tag has already been added."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v1    # "item":Lorg/catrobat/catroid/common/NfcTagData;
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 118
    :cond_1
    sget-object v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->TAG:Ljava/lang/String;

    const-string v2, "NFC Tag does not have a UID."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 83
    invoke-super {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onPause()V

    .line 84
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 87
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 100
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 101
    const v0, 0x7f0a0059

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 102
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 75
    invoke-super {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->onResume()V

    .line 76
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->pendingIntent:Landroid/app/PendingIntent;

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method

.method public bridge synthetic onSettingsClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 51
    check-cast p1, Lorg/catrobat/catroid/common/NfcTagData;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->onSettingsClick(Lorg/catrobat/catroid/common/NfcTagData;Landroid/view/View;)V

    return-void
.end method

.method public onSettingsClick(Lorg/catrobat/catroid/common/NfcTagData;Landroid/view/View;)V
    .locals 5
    .param p1, "item"    # Lorg/catrobat/catroid/common/NfcTagData;
    .param p2, "view"    # Landroid/view/View;

    .line 204
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 205
    .local v0, "popupMenu":Landroid/widget/PopupMenu;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v1, "itemList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/NfcTagData;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f0e000b

    invoke-virtual {v2, v4, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 209
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment$1;

    invoke-direct {v2, p0, v1, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;Ljava/util/List;Lorg/catrobat/catroid/common/NfcTagData;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 229
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0a0059

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 230
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v4, 0x7f0a0485

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 231
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v4, 0x7f0a0486

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 232
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v4, 0x7f0a05b0

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 233
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v4, 0x7f0a0555

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 234
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 235
    return-void
.end method

.method protected packItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/NfcTagData;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p1, "selectedItems":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/NfcTagData;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": NfcTags cannot be backpacked."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected switchToBackpack()V
    .locals 3

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/NfcTagListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": NfcTags cannot be backpacked."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
