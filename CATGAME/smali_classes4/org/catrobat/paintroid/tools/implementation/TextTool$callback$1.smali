.class public final Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;
.super Ljava/lang/Object;
.source "TextTool.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/TextToolOptionsView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/tools/implementation/TextTool;-><init>(Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0006H\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0006H\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "org/catrobat/paintroid/tools/implementation/TextTool$callback$1",
        "Lorg/catrobat/paintroid/tools/options/TextToolOptionsView$Callback;",
        "hideToolOptions",
        "",
        "setBold",
        "bold",
        "",
        "setFont",
        "fontType",
        "Lorg/catrobat/paintroid/tools/FontType;",
        "setItalic",
        "italic",
        "setText",
        "text",
        "",
        "setTextSize",
        "size",
        "",
        "setUnderlined",
        "underlined",
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


# instance fields
.field final synthetic $workspace:Lorg/catrobat/paintroid/tools/Workspace;

.field final synthetic this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/tools/implementation/TextTool;Lorg/catrobat/paintroid/tools/Workspace;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iput-object p2, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->$workspace:Lorg/catrobat/paintroid/tools/Workspace;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideToolOptions()V
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iget-object v0, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->toolOptionsViewController:Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->hide()V

    return-void
.end method

.method public setBold(Z)V
    .locals 4

    .line 186
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iput-boolean p1, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->bold:Z

    .line 187
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->storeAttributes$default(Lorg/catrobat/paintroid/tools/implementation/TextTool;ZILjava/lang/Object;)V

    .line 188
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iget-object p1, p1, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iget-boolean v3, v3, Lorg/catrobat/paintroid/tools/implementation/TextTool;->bold:Z

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 189
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {p1}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->access$resetPreview(Lorg/catrobat/paintroid/tools/implementation/TextTool;)V

    .line 190
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->$workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    .line 191
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {p1, v0, v1, v2}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->applyAttributes$default(Lorg/catrobat/paintroid/tools/implementation/TextTool;ZILjava/lang/Object;)V

    return-void
.end method

.method public setFont(Lorg/catrobat/paintroid/tools/FontType;)V
    .locals 3

    const-string v0, "fontType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iget-object v0, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->font:Lorg/catrobat/paintroid/tools/FontType;

    if-ne p1, v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iput-object p1, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->font:Lorg/catrobat/paintroid/tools/FontType;

    .line 152
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {p1}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->access$updateTypeface(Lorg/catrobat/paintroid/tools/implementation/TextTool;)V

    .line 153
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->storeAttributes$default(Lorg/catrobat/paintroid/tools/implementation/TextTool;ZILjava/lang/Object;)V

    .line 154
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {p1}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->access$resetPreview(Lorg/catrobat/paintroid/tools/implementation/TextTool;)V

    .line 155
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->$workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    .line 156
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {p1, v0, v1, v2}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->applyAttributes$default(Lorg/catrobat/paintroid/tools/implementation/TextTool;ZILjava/lang/Object;)V

    return-void
.end method

.method public setItalic(Z)V
    .locals 4

    .line 169
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iput-boolean p1, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->italic:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 171
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {v3, p1}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->access$storeAttributes(Lorg/catrobat/paintroid/tools/implementation/TextTool;Z)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {v3, v2, v1, v0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->storeAttributes$default(Lorg/catrobat/paintroid/tools/implementation/TextTool;ZILjava/lang/Object;)V

    .line 175
    :goto_0
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {v3}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->access$updateTypeface(Lorg/catrobat/paintroid/tools/implementation/TextTool;)V

    .line 176
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {v3}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->access$resetPreview(Lorg/catrobat/paintroid/tools/implementation/TextTool;)V

    .line 177
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->$workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v3}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    if-eqz p1, :cond_1

    .line 179
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {v0, p1}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->access$applyAttributes(Lorg/catrobat/paintroid/tools/implementation/TextTool;Z)V

    goto :goto_1

    .line 181
    :cond_1
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {p1, v2, v1, v0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->applyAttributes$default(Lorg/catrobat/paintroid/tools/implementation/TextTool;ZILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iput-object p1, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->text:Ljava/lang/String;

    .line 145
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {p1}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->access$resetPreview(Lorg/catrobat/paintroid/tools/implementation/TextTool;)V

    .line 146
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->$workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    .line 195
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {v0, p1}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->access$setTextSize$p(Lorg/catrobat/paintroid/tools/implementation/TextTool;I)V

    .line 196
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iget-object p1, p1, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->access$getTextSize$p(Lorg/catrobat/paintroid/tools/implementation/TextTool;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 197
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {p1}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->access$resetPreview(Lorg/catrobat/paintroid/tools/implementation/TextTool;)V

    .line 198
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->$workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    return-void
.end method

.method public setUnderlined(Z)V
    .locals 3

    .line 160
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iput-boolean p1, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->underlined:Z

    .line 161
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iget-object p1, p1, Lorg/catrobat/paintroid/tools/implementation/TextTool;->textPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    iget-boolean v0, v0, Lorg/catrobat/paintroid/tools/implementation/TextTool;->underlined:Z

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 162
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->storeAttributes$default(Lorg/catrobat/paintroid/tools/implementation/TextTool;ZILjava/lang/Object;)V

    .line 163
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {p1}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->access$resetPreview(Lorg/catrobat/paintroid/tools/implementation/TextTool;)V

    .line 164
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->$workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    .line 165
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/TextTool$callback$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/TextTool;

    invoke-static {p1, v0, v1, v2}, Lorg/catrobat/paintroid/tools/implementation/TextTool;->applyAttributes$default(Lorg/catrobat/paintroid/tools/implementation/TextTool;ZILjava/lang/Object;)V

    return-void
.end method
