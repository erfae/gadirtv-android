.class public interface abstract Lcom/magoware/magoware/webtv/players/PasswordPromptDialog$CurrentChannelListener;
.super Ljava/lang/Object;
.source "PasswordPromptDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/PasswordPromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CurrentChannelListener"
.end annotation


# virtual methods
.method public abstract onCurrentChannelChanged(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tvChannelObject"
        }
    .end annotation
.end method
