.class public Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/Ncg2Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LicenseInformation"
.end annotation


# instance fields
.field public abd_externaldisplay:I

.field public abd_sendreport:I

.field public abnormal_device:I

.field public licenseValidation:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

.field public opt_aps:I

.field public opt_cavendish:I

.field public opt_cgms_a:I

.field public opt_externalDisplay:I

.field public opt_hdcp:I

.field public playDurationHour:I

.field public playEndDate:Ljava/lang/String;

.field public playRemainCount:I

.field public playStartDate:Ljava/lang/String;

.field public playTotalCount:I

.field public playVerificationMethod:Ljava/lang/String;

.field final synthetic this$0:Lcom/inka/ncg2/Ncg2Agent;


# direct methods
.method public constructor <init>(Lcom/inka/ncg2/Ncg2Agent;)V
    .locals 1

    .line 2284
    iput-object p1, p0, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->this$0:Lcom/inka/ncg2/Ncg2Agent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x61

    .line 2285
    iput p1, p0, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->opt_externalDisplay:I

    const/4 v0, 0x0

    .line 2286
    iput v0, p0, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->opt_aps:I

    .line 2287
    iput v0, p0, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->opt_cgms_a:I

    .line 2288
    iput v0, p0, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->opt_cavendish:I

    .line 2289
    iput v0, p0, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->opt_hdcp:I

    .line 2290
    iput p1, p0, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->abnormal_device:I

    .line 2291
    iput v0, p0, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->abd_sendreport:I

    return-void
.end method
