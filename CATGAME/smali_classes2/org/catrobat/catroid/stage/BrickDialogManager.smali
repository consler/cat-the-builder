.class public final Lorg/catrobat/catroid/stage/BrickDialogManager;
.super Ljava/lang/Object;
.source "BrickDialogManager.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/stage/BrickDialogManager$DialogType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrickDialogManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrickDialogManager.kt\norg/catrobat/catroid/stage/BrickDialogManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,173:1\n1819#2,2:174\n*E\n*S KotlinDebug\n*F\n+ 1 BrickDialogManager.kt\norg/catrobat/catroid/stage/BrickDialogManager\n*L\n61#1,2:174\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002:\u0001+B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J \u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0008H\u0002J\u0018\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0011H\u0002J\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J \u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u0008H\u0002J\u001e\u0010%\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0011R2\u0010\u0006\u001a&\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u00080\u0008 \t*\u0012\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u00080\u0008\u0018\u00010\n0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006,"
    }
    d2 = {
        "Lorg/catrobat/catroid/stage/BrickDialogManager;",
        "Landroid/content/DialogInterface$OnKeyListener;",
        "Landroid/content/DialogInterface$OnDismissListener;",
        "stageActivity",
        "Lorg/catrobat/catroid/stage/StageActivity;",
        "(Lorg/catrobat/catroid/stage/StageActivity;)V",
        "openDialogs",
        "",
        "Landroid/app/Dialog;",
        "kotlin.jvm.PlatformType",
        "",
        "getStageActivity",
        "()Lorg/catrobat/catroid/stage/StageActivity;",
        "createAskDialog",
        "askAction",
        "Lorg/catrobat/catroid/content/actions/AskAction;",
        "question",
        "",
        "createTrustDomainDialog",
        "webAction",
        "Lorg/catrobat/catroid/content/actions/WebAction;",
        "url",
        "webAccessDialog",
        "createWebAccessDialog",
        "dialogIsShowing",
        "",
        "dismissAllDialogs",
        "",
        "onDismiss",
        "dialog",
        "Landroid/content/DialogInterface;",
        "onKey",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "openDialog",
        "showDialog",
        "type",
        "Lorg/catrobat/catroid/stage/BrickDialogManager$DialogType;",
        "action",
        "Lcom/badlogic/gdx/scenes/scene2d/Action;",
        "content",
        "DialogType",
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
.field private final openDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private final stageActivity:Lorg/catrobat/catroid/stage/StageActivity;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/stage/StageActivity;)V
    .locals 1
    .param p1, "stageActivity"    # Lorg/catrobat/catroid/stage/StageActivity;

    const-string v0, "stageActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->openDialogs:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$createTrustDomainDialog(Lorg/catrobat/catroid/stage/BrickDialogManager;Lorg/catrobat/catroid/content/actions/WebAction;Ljava/lang/String;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/stage/BrickDialogManager;
    .param p1, "webAction"    # Lorg/catrobat/catroid/content/actions/WebAction;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "webAccessDialog"    # Landroid/app/Dialog;

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/catrobat/catroid/stage/BrickDialogManager;->createTrustDomainDialog(Lorg/catrobat/catroid/content/actions/WebAction;Ljava/lang/String;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$openDialog(Lorg/catrobat/catroid/stage/BrickDialogManager;Landroid/app/Dialog;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/stage/BrickDialogManager;
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 48
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/stage/BrickDialogManager;->openDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private final createAskDialog(Lorg/catrobat/catroid/content/actions/AskAction;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 5
    .param p1, "askAction"    # Lorg/catrobat/catroid/content/actions/AskAction;
    .param p2, "question"    # Ljava/lang/String;

    .line 80
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 81
    .local v0, "editText":Landroid/widget/EditText;
    nop

    .line 91
    nop

    .line 81
    nop

    .line 88
    nop

    .line 81
    nop

    .line 87
    nop

    .line 81
    nop

    .line 86
    nop

    .line 81
    nop

    .line 85
    nop

    .line 81
    nop

    .line 84
    nop

    .line 81
    nop

    .line 83
    nop

    .line 81
    nop

    .line 82
    nop

    .line 81
    new-instance v1, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    check-cast v3, Landroid/content/Context;

    const v4, 0x7f13023d

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f12006b

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 84
    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 85
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 86
    move-object v2, p0

    check-cast v2, Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 87
    move-object v2, p0

    check-cast v2, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f12006c

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lorg/catrobat/catroid/stage/BrickDialogManager$createAskDialog$askDialog$1;

    invoke-direct {v3, p1, v0}, Lorg/catrobat/catroid/stage/BrickDialogManager$createAskDialog$askDialog$1;-><init>(Lorg/catrobat/catroid/content/actions/AskAction;Landroid/widget/EditText;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 81
    nop

    .line 93
    .local v1, "askDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 94
    const-string v2, "askDialog"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 95
    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/app/Dialog;

    return-object v2
.end method

.method private final createTrustDomainDialog(Lorg/catrobat/catroid/content/actions/WebAction;Ljava/lang/String;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 8
    .param p1, "webAction"    # Lorg/catrobat/catroid/content/actions/WebAction;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "webAccessDialog"    # Landroid/app/Dialog;

    .line 129
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "URI(url).host"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "www."

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "domain":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0155

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 131
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0a057c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "view.findViewById<TextView>(R.id.request_url)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    nop

    .line 136
    nop

    .line 133
    nop

    .line 135
    nop

    .line 133
    nop

    .line 134
    nop

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    iget-object v3, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "https://catrob.at/webbricks"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f1207d6

    invoke-virtual {v3, v5, v4}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v3, "<br><br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v3, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v4, 0x7f1207d4

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    nop

    .line 138
    .local v2, "warningMessage":Ljava/lang/StringBuilder;
    nop

    .line 139
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v4, 0x7f1207a2

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const v3, 0x7f0a057d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, "$this$apply":Landroid/widget/TextView;
    const/4 v4, 0x0

    .line 143
    .local v4, "$i$a$-apply-BrickDialogManager$createTrustDomainDialog$1":I
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 145
    nop

    .line 142
    .end local v3    # "$this$apply":Landroid/widget/TextView;
    .end local v4    # "$i$a$-apply-BrickDialogManager$createTrustDomainDialog$1":I
    nop

    .line 147
    nop

    .line 160
    nop

    .line 147
    nop

    .line 157
    nop

    .line 147
    nop

    .line 153
    nop

    .line 147
    nop

    .line 152
    nop

    .line 147
    nop

    .line 151
    nop

    .line 147
    nop

    .line 150
    nop

    .line 147
    nop

    .line 149
    nop

    .line 147
    nop

    .line 148
    nop

    .line 147
    new-instance v3, Landroid/app/AlertDialog$Builder;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    check-cast v5, Landroid/content/Context;

    const v7, 0x7f13023d

    invoke-direct {v4, v5, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    check-cast v4, Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    iget-object v4, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v5, 0x7f1207d5

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 149
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 150
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 151
    move-object v4, p0

    check-cast v4, Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 152
    move-object v4, p0

    check-cast v4, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 153
    iget-object v4, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v5, 0x7f120034

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v5, Lorg/catrobat/catroid/stage/BrickDialogManager$createTrustDomainDialog$2;

    invoke-direct {v5, v0, p1}, Lorg/catrobat/catroid/stage/BrickDialogManager$createTrustDomainDialog$2;-><init>(Ljava/lang/String;Lorg/catrobat/catroid/content/actions/WebAction;)V

    check-cast v5, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 157
    iget-object v4, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v5, 0x7f1201b8

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v5, Lorg/catrobat/catroid/stage/BrickDialogManager$createTrustDomainDialog$3;

    invoke-direct {v5, p0, p3}, Lorg/catrobat/catroid/stage/BrickDialogManager$createTrustDomainDialog$3;-><init>(Lorg/catrobat/catroid/stage/BrickDialogManager;Landroid/app/Dialog;)V

    check-cast v5, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 160
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    const-string v4, "AlertDialog.Builder(Cont\u2026  }\n            .create()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/app/Dialog;

    .line 147
    return-object v3
.end method

.method private final createWebAccessDialog(Lorg/catrobat/catroid/content/actions/WebAction;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 7
    .param p1, "webAction"    # Lorg/catrobat/catroid/content/actions/WebAction;
    .param p2, "url"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0155

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a057c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "view.findViewById<TextView>(R.id.request_url)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const v1, 0x7f0a057d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .local v1, "$this$apply":Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 103
    .local v2, "$i$a$-apply-BrickDialogManager$createWebAccessDialog$1":I
    nop

    .line 104
    iget-object v3, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "https://catrob.at/webbricks"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f1207d6

    invoke-virtual {v3, v5, v4}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 105
    nop

    .line 103
    invoke-static {v3, v6}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 108
    nop

    .line 102
    .end local v1    # "$this$apply":Landroid/widget/TextView;
    .end local v2    # "$i$a$-apply-BrickDialogManager$createWebAccessDialog$1":I
    nop

    .line 110
    nop

    .line 125
    nop

    .line 110
    nop

    .line 122
    nop

    .line 110
    nop

    .line 119
    nop

    .line 110
    nop

    .line 116
    nop

    .line 110
    nop

    .line 115
    nop

    .line 110
    nop

    .line 114
    nop

    .line 110
    nop

    .line 113
    nop

    .line 110
    nop

    .line 112
    nop

    .line 110
    nop

    .line 111
    nop

    .line 110
    new-instance v1, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    check-cast v3, Landroid/content/Context;

    const v4, 0x7f13023d

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    iget-object v2, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f1207d7

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 112
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 113
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 114
    move-object v2, p0

    check-cast v2, Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 115
    move-object v2, p0

    check-cast v2, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 116
    iget-object v2, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f120600

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lorg/catrobat/catroid/stage/BrickDialogManager$createWebAccessDialog$2;

    invoke-direct {v3, p1}, Lorg/catrobat/catroid/stage/BrickDialogManager$createWebAccessDialog$2;-><init>(Lorg/catrobat/catroid/content/actions/WebAction;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 119
    iget-object v2, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f120034

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lorg/catrobat/catroid/stage/BrickDialogManager$createWebAccessDialog$3;

    invoke-direct {v3, p0, p1, p2}, Lorg/catrobat/catroid/stage/BrickDialogManager$createWebAccessDialog$3;-><init>(Lorg/catrobat/catroid/stage/BrickDialogManager;Lorg/catrobat/catroid/content/actions/WebAction;Ljava/lang/String;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 122
    iget-object v2, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    const v3, 0x7f12025c

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lorg/catrobat/catroid/stage/BrickDialogManager$createWebAccessDialog$4;

    invoke-direct {v3, p1}, Lorg/catrobat/catroid/stage/BrickDialogManager$createWebAccessDialog$4;-><init>(Lorg/catrobat/catroid/content/actions/WebAction;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "AlertDialog.Builder(Cont\u2026  }\n            .create()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Dialog;

    .line 110
    return-object v1
.end method

.method private final openDialog(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 74
    iget-object v0, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/stage/StageLifeCycleController;->stagePause(Lorg/catrobat/catroid/stage/StageActivity;)V

    .line 75
    iget-object v0, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->openDialogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 77
    return-void
.end method


# virtual methods
.method public final dialogIsShowing()Z
    .locals 2

    .line 58
    iget-object v0, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->openDialogs:Ljava/util/List;

    const-string v1, "openDialogs"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final dismissAllDialogs()V
    .locals 6

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->openDialogs:Ljava/util/List;

    const-string v1, "openDialogs"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 174
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroid/app/Dialog;

    .local v4, "it":Landroid/app/Dialog;
    const/4 v5, 0x0

    .line 61
    .local v5, "$i$a$-forEach-BrickDialogManager$dismissAllDialogs$1":I
    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Landroid/app/Dialog;
    .end local v5    # "$i$a$-forEach-BrickDialogManager$dismissAllDialogs$1":I
    goto :goto_0

    .line 175
    :cond_0
    nop

    .line 62
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    iget-object v0, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->openDialogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    return-void
.end method

.method public final getStageActivity()Lorg/catrobat/catroid/stage/StageActivity;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->openDialogs:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Landroid/app/Dialog;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-static {v0}, Lorg/catrobat/catroid/stage/StageLifeCycleController;->stageResume(Lorg/catrobat/catroid/stage/StageActivity;)V

    .line 171
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .local v1, "it":Z
    const/4 v2, 0x0

    .line 165
    .local v2, "$i$a$-also-BrickDialogManager$onKey$1":I
    if-eqz v1, :cond_1

    iget-object v3, p0, Lorg/catrobat/catroid/stage/BrickDialogManager;->stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-virtual {v3}, Lorg/catrobat/catroid/stage/StageActivity;->onBackPressed()V

    .line 166
    :cond_1
    nop

    .line 164
    .end local v1    # "it":Z
    .end local v2    # "$i$a$-also-BrickDialogManager$onKey$1":I
    nop

    .line 166
    return v0
.end method

.method public final showDialog(Lorg/catrobat/catroid/stage/BrickDialogManager$DialogType;Lcom/badlogic/gdx/scenes/scene2d/Action;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Lorg/catrobat/catroid/stage/BrickDialogManager$DialogType;
    .param p2, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p3, "content"    # Ljava/lang/String;

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lorg/catrobat/catroid/stage/BrickDialogManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/catrobat/catroid/stage/BrickDialogManager$DialogType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 68
    move-object v0, p2

    check-cast v0, Lorg/catrobat/catroid/content/actions/WebAction;

    invoke-direct {p0, v0, p3}, Lorg/catrobat/catroid/stage/BrickDialogManager;->createWebAccessDialog(Lorg/catrobat/catroid/content/actions/WebAction;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 67
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/catrobat/catroid/content/actions/AskAction;

    invoke-direct {p0, v0, p3}, Lorg/catrobat/catroid/stage/BrickDialogManager;->createAskDialog(Lorg/catrobat/catroid/content/actions/AskAction;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 66
    :goto_0
    nop

    .line 70
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/stage/BrickDialogManager;->openDialog(Landroid/app/Dialog;)V

    .line 71
    return-void
.end method
