.class public Lcom/verimatrix/vdc/RequestQueue$ProfileGetRequest;
.super Lcom/verimatrix/vdc/RequestQueue$Request;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ProfileGetRequest"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field listener:Lcom/verimatrix/vdc/Monitor$OnProfileGetListener;

.field profile:Lcom/verimatrix/vdc/Profile;


# direct methods
.method public constructor <init>(Lcom/verimatrix/vdc/Profile;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$OnProfileGetListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 163
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/RequestQueue$Request;-><init>(I)V

    .line 164
    iput-object p1, p0, Lcom/verimatrix/vdc/RequestQueue$ProfileGetRequest;->profile:Lcom/verimatrix/vdc/Profile;

    .line 165
    iput-object p2, p0, Lcom/verimatrix/vdc/RequestQueue$ProfileGetRequest;->key:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lcom/verimatrix/vdc/RequestQueue$ProfileGetRequest;->listener:Lcom/verimatrix/vdc/Monitor$OnProfileGetListener;

    return-void
.end method
