.class Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$5;
.super Ljava/lang/Object;
.source "LiveMobileActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$5;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$5;->this$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->access$1200(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
