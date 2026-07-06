.class final Lorg/androidannotations/api/BackgroundExecutor$2;
.super Lorg/androidannotations/api/BackgroundExecutor$Task;
.source "BackgroundExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p4, p0, Lorg/androidannotations/api/BackgroundExecutor$2;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2, p3}, Lorg/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    iget-object v0, p0, Lorg/androidannotations/api/BackgroundExecutor$2;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
