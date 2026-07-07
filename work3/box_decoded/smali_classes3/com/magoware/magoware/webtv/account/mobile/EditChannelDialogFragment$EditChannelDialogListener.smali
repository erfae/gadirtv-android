.class public interface abstract Lcom/magoware/magoware/webtv/account/mobile/EditChannelDialogFragment$EditChannelDialogListener;
.super Ljava/lang/Object;
.source "EditChannelDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/account/mobile/EditChannelDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EditChannelDialogListener"
.end annotation


# virtual methods
.method public abstract onFinishEditChannel(Ljava/util/HashMap;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "text_nr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
