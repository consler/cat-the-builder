.class public abstract Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "BroadcastMessageBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/content/bricks/BrickBaseType;",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener<",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;",
        ">;"
    }
.end annotation


# instance fields
.field private transient spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<",
            "Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    return-void
.end method

.method public static getSortedItemListFromMessages(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/Nameable;",
            ">;"
        }
    .end annotation

    .line 176
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const v0, 0x7f12007a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "defaultValue":Ljava/lang/String;
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 181
    .end local v0    # "defaultValue":Ljava/lang/String;
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$kBmSQXBMDwoUmxLlngPKMLmJRxE;->INSTANCE:Lorg/catrobat/catroid/content/bricks/-$$Lambda$kBmSQXBMDwoUmxLlngPKMLmJRxE;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/Nameable;>;"
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;

    const v2, 0x7f1205aa

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/NewOption;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/EditOption;

    const v2, 0x7f1202ca

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/EditOption;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;

    invoke-direct {v3, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v2    # "message":Ljava/lang/String;
    goto :goto_0

    .line 190
    :cond_1
    return-object v0
.end method


# virtual methods
.method public addItem(Ljava/lang/String;)V
    .locals 2
    .param p1, "item"    # Ljava/lang/String;

    .line 125
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getBroadcastMessageContainer()Lorg/catrobat/catroid/common/BroadcastMessageContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/common/BroadcastMessageContainer;->addBroadcastMessage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;

    invoke-direct {v1, p1}, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->add(Lorg/catrobat/catroid/common/Nameable;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/content/bricks/Brick;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 62
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;

    .line 63
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 64
    return-object v0
.end method

.method public abstract getBroadcastMessage()Ljava/lang/String;
.end method

.method public getCanceledListener()Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    .line 171
    new-instance v0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$BroadcastMessageBrick$5YVLwLIpOph2y1FftUnEf9sZKE0;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/bricks/-$$Lambda$BroadcastMessageBrick$5YVLwLIpOph2y1FftUnEf9sZKE0;-><init>(Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;)V

    return-object v0
.end method

.method public getEditButtonListener(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;
    .locals 1
    .param p1, "activity"    # Landroidx/appcompat/app/AppCompatActivity;
    .param p2, "editMessage"    # Ljava/lang/String;

    .line 154
    new-instance v0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$BroadcastMessageBrick$bqY20fQhf1cfNYorYyGUHk-N17s;

    invoke-direct {v0, p0, p2, p1}, Lorg/catrobat/catroid/content/bricks/-$$Lambda$BroadcastMessageBrick$bqY20fQhf1cfNYorYyGUHk-N17s;-><init>(Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;)V

    return-object v0
.end method

.method public getNegativeButtonListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 166
    new-instance v0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$BroadcastMessageBrick$x4B9dGcEQUoohgrE1Zd6uqJrvCI;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/bricks/-$$Lambda$BroadcastMessageBrick$x4B9dGcEQUoohgrE1Zd6uqJrvCI;-><init>(Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;)V

    return-object v0
.end method

.method public getOkButtonListener(Landroidx/appcompat/app/AppCompatActivity;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;
    .locals 1
    .param p1, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    .line 146
    new-instance v0, Lorg/catrobat/catroid/content/bricks/-$$Lambda$BroadcastMessageBrick$AtWdcLMLEizZJKZq1gTTnmC67Mg;

    invoke-direct {v0, p0, p1}, Lorg/catrobat/catroid/content/bricks/-$$Lambda$BroadcastMessageBrick$AtWdcLMLEizZJKZq1gTTnmC67Mg;-><init>(Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;Landroidx/appcompat/app/AppCompatActivity;)V

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 71
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getBroadcastMessageContainer()Lorg/catrobat/catroid/common/BroadcastMessageContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/BroadcastMessageContainer;->getBroadcastMessages()Ljava/util/List;

    move-result-object v0

    .line 74
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, v0}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->getSortedItemListFromMessages(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 76
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/Nameable;>;"
    new-instance v2, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    const v3, 0x7f0a0086

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->view:Landroid/view/View;

    invoke-direct {v2, v3, v4, v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;-><init>(Ljava/lang/Integer;Landroid/view/View;Ljava/util/List;)V

    iput-object v2, p0, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 77
    invoke-virtual {v2, p0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setOnItemSelectedListener(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;)V

    .line 78
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->getBroadcastMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->view:Landroid/view/View;

    return-object v2
.end method

.method public synthetic lambda$getCanceledListener$3$BroadcastMessageBrick(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 171
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->getBroadcastMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$getEditButtonListener$1$BroadcastMessageBrick(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 1
    .param p1, "editMessage"    # Ljava/lang/String;
    .param p2, "activity"    # Landroidx/appcompat/app/AppCompatActivity;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "textInput"    # Ljava/lang/String;

    .line 155
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->removeItem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0, p4}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->addItem(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    .line 158
    .local v0, "currentScene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v0, p1, p4}, Lorg/catrobat/catroid/content/Scene;->editBroadcastMessagesInUse(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0, p2}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->notifyDataSetChanged(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 161
    .end local v0    # "currentScene":Lorg/catrobat/catroid/content/Scene;
    :cond_0
    return-void
.end method

.method public synthetic lambda$getNegativeButtonListener$2$BroadcastMessageBrick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 166
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->getBroadcastMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$getOkButtonListener$0$BroadcastMessageBrick(Landroidx/appcompat/app/AppCompatActivity;Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroidx/appcompat/app/AppCompatActivity;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "textInput"    # Ljava/lang/String;

    .line 147
    invoke-virtual {p0, p3}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->addItem(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->notifyDataSetChanged(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 149
    return-void
.end method

.method public onEditOptionSelected(Ljava/lang/Integer;)V
    .locals 7
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 102
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->view:Landroid/view/View;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 103
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    instance-of v1, v0, Lorg/catrobat/catroid/ui/SpriteActivity;

    if-nez v1, :cond_0

    .line 104
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->getSelection()Ljava/lang/Object;

    move-result-object v1

    .line 108
    .local v1, "currentItem":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 109
    .local v2, "editMessage":Ljava/lang/String;
    instance-of v3, v1, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;

    if-eqz v3, :cond_1

    .line 110
    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->getSelection()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;->getName()Ljava/lang/String;

    move-result-object v2

    .line 113
    :cond_1
    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-direct {v3, v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    .local v3, "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setText(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v4

    new-instance v5, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v5, v6}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;-><init>(Ljava/util/List;)V

    .line 116
    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTextWatcher(Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v4

    const v5, 0x7f1205ff

    .line 117
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v2}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->getEditButtonListener(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v4

    const v5, 0x7f120270

    .line 118
    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f1201b8

    .line 119
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->getNegativeButtonListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    .line 120
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->getCanceledListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    .line 121
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 122
    return-void
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p2, Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;)V

    return-void
.end method

.method public onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "item"    # Lorg/catrobat/catroid/content/bricks/brickspinner/StringOption;

    .line 142
    return-void
.end method

.method public onNewOptionSelected(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 84
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->view:Landroid/view/View;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/UiUtils;->getActivityFromView(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    .line 85
    .local v0, "activity":Landroidx/appcompat/app/AppCompatActivity;
    instance-of v1, v0, Lorg/catrobat/catroid/ui/SpriteActivity;

    if-nez v1, :cond_0

    .line 86
    return-void

    .line 88
    :cond_0
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    .local v1, "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    const v2, 0x7f120269

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setHint(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v2

    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;-><init>(Ljava/util/List;)V

    .line 91
    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTextWatcher(Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v2

    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-direct {v3}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;-><init>()V

    const v4, 0x7f120231

    .line 92
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v5

    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Project;->getBroadcastMessageContainer()Lorg/catrobat/catroid/common/BroadcastMessageContainer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/catrobat/catroid/common/BroadcastMessageContainer;->getBroadcastMessages()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setText(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v2

    const v3, 0x7f1205ff

    .line 93
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->getOkButtonListener(Landroidx/appcompat/app/AppCompatActivity;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v2

    const v3, 0x7f120277

    .line 94
    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1201b8

    .line 95
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->getNegativeButtonListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 96
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->getCanceledListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 98
    return-void
.end method

.method public onStringOptionSelected(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "string"    # Ljava/lang/String;

    .line 137
    invoke-virtual {p0, p2}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->setBroadcastMessage(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public removeItem(Ljava/lang/String;)Z
    .locals 1
    .param p1, "item"    # Ljava/lang/String;

    .line 132
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getBroadcastMessageContainer()Lorg/catrobat/catroid/common/BroadcastMessageContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/common/BroadcastMessageContainer;->removeBroadcastMessage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract setBroadcastMessage(Ljava/lang/String;)V
.end method
