.class Lneedle/UiRelatedProgressTask$1;
.super Ljava/lang/Object;
.source "UiRelatedProgressTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lneedle/UiRelatedProgressTask;->publishProgress(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lneedle/UiRelatedProgressTask;

.field final synthetic val$progress:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lneedle/UiRelatedProgressTask;Ljava/lang/Object;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lneedle/UiRelatedProgressTask$1;->this$0:Lneedle/UiRelatedProgressTask;

    iput-object p2, p0, Lneedle/UiRelatedProgressTask$1;->val$progress:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 29
    iget-object v0, p0, Lneedle/UiRelatedProgressTask$1;->this$0:Lneedle/UiRelatedProgressTask;

    iget-object v1, p0, Lneedle/UiRelatedProgressTask$1;->val$progress:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lneedle/UiRelatedProgressTask;->onProgressUpdate(Ljava/lang/Object;)V

    return-void
.end method
